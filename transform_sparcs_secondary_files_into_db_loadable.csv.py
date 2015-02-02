"""
    Starting in 2013 SPARCS released secondary files that were initially in the larger record. This included
    the encrypted identifiers which can be used to follow an individual through a file.
"""


import csv
import json
import sys
import time


def main(sparcs_secondary_data_file, sparcs_secondary_file_json_structure, log_every_ith_record=100000):
    with open(sparcs_secondary_file_json_structure, "r") as fj:
        sparcs_secondary_layout = json.load(fj)

    header_secondary = []
    for column_detail_in in sparcs_secondary_layout:
        header_secondary += [column_detail_in["Field Label"]]

    with open(sparcs_secondary_data_file, "r") as fd:
        sparcs_secondary_data_file_csv = sparcs_secondary_data_file + ".csv"
        with open(sparcs_secondary_data_file_csv, "wb") as fw:

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
    if len(sys.argv) == 1:
	    print('Usage: python transform_sparcs_secondary_file_into_db_loadable_csv.py /path/to/SECONDARY.DAT "./support_files/SPARCS IP Format_SECONDARY.csv.json"')
    elif len(sys.argv) == 3:
        main(sys.argv[1], sys.argv[2])
