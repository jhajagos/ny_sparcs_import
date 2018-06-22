"""
The goal is to import SPARCS inpatient/outpatient DAT files into CSV files which can be loaded into a
database.

The file is interleaved with continuation records. The continuation record has a different
layout compared to the primary record.

Two CSV files are generated from each .DAT file.

Use 'generate_sql_ddl_create_table.py' to import into a PostGreSQL database or modify
for your target database.
"""

__author__ = 'janos'

import csv
import json
import argparse
import time
import sys

def open_csv_file(file_name, mode="w"):

    ver_info = sys.version_info[0]
    if ver_info == 2:
        return open(file_name, mode=mode + "b")
    else:
        return open(file_name, newline="", mode=mode)


def main(sparcs_data_file, sparcs_primary_file_json_structure="SPARCS OP Format_LIMITED.csv.json",
         sparcs_continuation_file_json_structure="SPARCS OP Format_LIMITED continuation.csv.json",
         log_every_ith_record=10000
         ):

    with open(sparcs_primary_file_json_structure, "r") as fj:
        sparcs_primary_layout = json.load(fj)

    header_primary = []
    for column_detail_in in sparcs_primary_layout:
        header_primary += [column_detail_in["Field Label"]]

    with open(sparcs_continuation_file_json_structure, "r") as fj:
        sparcs_continuation_layout = json.load(fj)

    header_continuation = []
    for column_detail_in in sparcs_continuation_layout:
        header_continuation += [column_detail_in["Field Label"]]

    sparcs_primary_csv_file = sparcs_data_file + ".primary.csv"
    sparcs_continuation_csv_file = sparcs_data_file + ".continuation.csv"

    with open(sparcs_data_file, "r") as fd:
        with open_csv_file(sparcs_primary_csv_file, "w") as fwp:

            csv_writer_primary = csv.writer(fwp)
            csv_writer_primary.writerow(header_primary)
            starting_positions_primary = [(int(sl["From"]) - 1, int(sl["Size"])) for sl in sparcs_primary_layout]

            starting_primary_position_type = {}
            for sl in sparcs_primary_layout:
                starting_primary_position_type[int(sl["From"]) - 1] = sl["Type"]

            with open(sparcs_continuation_csv_file, "wb") as fwc:
                csv_writer_continuation = csv.writer(fwc)
                csv_writer_continuation.writerow(header_continuation)
                starting_positions_continuation = [(int(sl["From"]) - 1, int(sl["Size"])) for sl in sparcs_continuation_layout]
                starting_continuation_position_type = {}
                for sl in sparcs_continuation_layout:
                    starting_continuation_position_type[int(sl["From"]) - 1] = sl["Type"]

                i = 0
                row_to_write = []

                start_time = time.time()
                loop_time = start_time

                for line in fd:

                    record_number = line[15:18]
                    record_number_int = int(record_number)

                    if record_number_int == 1:

                        for start_pos in starting_positions_primary:
                            raw_value = line[start_pos[0]:(start_pos[0] + start_pos[1])].strip()

                            if starting_primary_position_type[int(start_pos[0])] == "NUM":
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
                        csv_writer_primary.writerow(row_to_write)
                        row_to_write = []

                    else:  # continuation record
                        for start_pos in starting_positions_continuation:
                            raw_value = line[start_pos[0]:start_pos[0] + start_pos[1]].strip()
                            if starting_continuation_position_type[int(start_pos[0])] == "NUM":
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
                        csv_writer_continuation.writerow(row_to_write)
                        row_to_write = []

                    i += 1
                    if i % log_every_ith_record == 0:
                        updated_time = time.time()
                        time_difference = updated_time - loop_time

                        print("Read %s lines in %s seconds" % (i, time_difference))
                        loop_time = updated_time


if __name__ == "__main__":

    arg_parser_obj = argparse.ArgumentParser(description="Program for converting SPARCS dat files into two CSV files.")

    arg_parser_obj.add_argument("-f", "--dat-file-name", help="DAT file to convert", dest="dat_file_name", required=True)
    arg_parser_obj.add_argument("-p", "--primary-json-file-name", dest="primary_json_file_name", required=True)
    arg_parser_obj.add_argument("-c", "--continuation-json-file-name", dest="continuation_json_file_name", required=True)

    arg_obj = arg_parser_obj.parse_args()

    main(arg_obj.dat_file_name, arg_obj.primary_json_file_name, arg_obj.continuation_json_file_name)
