"""
    Starting for the 2013 release SPARCS started releasing secondary files for the limited data set.
    Previously certain fields which were encrypted were part of the primary row are now in the secondary tables.

    This program transforms the fixed width format that SPARCS files are distributed into a CSV file
    that can be more easily loaded into a database.
"""

import csv
import json
import time
import argparse
import sys

def open_csv_file(file_name, mode="w"):

    ver_info = sys.version_info[0]
    if ver_info == 2:
        return open(file_name, mode=mode + "b")
    else:
        return open(file_name, newline="", mode=mode)

def main(sparcs_secondary_data_file, sparcs_secondary_file_json_structure, log_every_ith_record=100000):
    with open(sparcs_secondary_file_json_structure, "r") as fj:
        sparcs_secondary_layout = json.load(fj)

    header_secondary = []
    for column_detail_in in sparcs_secondary_layout:
        header_secondary += [column_detail_in["Field Label"]]

    with open(sparcs_secondary_data_file, "r") as fd:
        sparcs_secondary_data_file_csv = sparcs_secondary_data_file + ".csv"
        with open_csv_file(sparcs_secondary_data_file_csv, "w") as fw:

            csv_writer_secondary = csv.writer(fw)
            csv_writer_secondary.writerow(header_secondary)
            starting_positions_secondary = [(int(sl["From"]) - 1, int(sl["Size"])) for sl in sparcs_secondary_layout]

            starting_secondary_position_type = {}
            for sl in sparcs_secondary_layout:
                starting_secondary_position_type[int(sl["From"]) - 1] = sl["Type"]

            i = 0
            start_time = time.time()
            loop_time = start_time

            for line in fd:
                row_to_write = []
                for start_pos in starting_positions_secondary:
                    raw_value = line[start_pos[0]:(start_pos[0] + start_pos[1])].strip()
                    if starting_secondary_position_type[int(start_pos[0])] == "NUM":
                        if len(raw_value) > 0:
                            try:
                                processed_value = int(raw_value)
                            except ValueError:
                                processed_value = ''
                                print(i, start_pos, raw_value)
                        else:
                            processed_value = raw_value
                    else:
                        processed_value = raw_value
                    row_to_write += [processed_value]

                csv_writer_secondary.writerow(row_to_write)

                i += 1
                if i % log_every_ith_record == 0:
                    updated_time = time.time()
                    time_difference = updated_time - loop_time

                    print("Read %s lines in %s seconds" % (i, time_difference))
                    loop_time = updated_time


if __name__ == "__main__":

    arg_parse_obj = argparse.ArgumentParser(description="Converting encrypted secondary DAT files into CSV")

    arg_parse_obj.add_argument("-f", "--dat-file-name", dest="dat_file_name", required=True)
    arg_parse_obj.add_argument("-j", "--json-file-name", dest="json_file_name", required=True)

    arg_obj = arg_parse_obj.parse_args()

    main(arg_obj.dat_file_name, arg_obj.json_file_name)
