"""
The goal is to import SPARCS LDS outpatient database into a CSV which can be loaded into a
database.

"""

__author__ = 'janos'

import csv
import json
import sys
import time

def main(sparcs_dat_file, sparcs_primary_file_json_structure, sparcs_continuation_file_json_structure):

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

    sparcs_primary_csv_file = sparcs_dat_file + ".primary.csv"
    sparcs_continuation_csv_file = sparcs_dat_file + ".continuation.csv"

    with open(sparcs_dat_file, "r") as fd:
        with open(sparcs_primary_csv_file, "wb") as fwp:

            csv_writer_primary = csv.writer(fwp)
            csv_writer_primary.writerow(header_primary)
            starting_positions_primary = [(int(sl["From"]) - 1, int(sl["Size"])) for sl in sparcs_primary_layout]

            with open(sparcs_continuation_csv_file, "wb") as fwc:
                csv_writer_continuation = csv.writer(fwc)
                csv_writer_continuation.writerow(header_continuation)
                starting_positions_continuation = [(int(sl["From"]) - 1, int(sl["Size"])) for sl in sparcs_continuation_layout]

                i = 0
                row_to_write = []

                start_time = time.time()
                loop_time = start_time

                for line in fd:

                    record_number = line[15:18]
                    record_number_int = int(record_number)

                    if record_number_int == 1:

                        for start_pos in starting_positions_primary:
                            row_to_write += [line[start_pos[0]:start_pos[0] + start_pos[1]].strip()]
                        csv_writer_primary.writerow(row_to_write)
                        row_to_write = []

                    else:  # continuation record
                        for start_pos in starting_positions_continuation:
                            row_to_write += [line[start_pos[0]:start_pos[0] + start_pos[1]].strip()]
                        csv_writer_continuation.writerow(row_to_write)
                        row_to_write = []

                    i += 1
                    if i % 1000 == 0:
                        updated_time = time.time()
                        time_difference = updated_time - loop_time

                        print("Read %s lines in %s seconds" % (i, time_difference))
                        loop_time = updated_time

if __name__ == "__main__":
    if len(sys.argv) == 1:
        main("C:/users/janos/data/sparcs_outpatient_lds/2.2/LIMITEDOP12p1.DAT.sample", "SPARCS OP Format_LIMITED.csv.json", "SPARCS OP Format_LIMITED continuation.csv.json")
    else:
        main(sys.argv[1], sys.argv[2])