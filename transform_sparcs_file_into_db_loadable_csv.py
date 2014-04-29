"""
The goal is to import SPARCS LDS outpatient database into a CSV which can be loaded into a
database.

"""

__author__ = 'janos'

import csv
import json
import sys


def main(sparcs_dat_file, sparcs_dat_file_json_structure):

    with open(sparcs_dat_file_json_structure, "r") as fj:
        sparcs_layout = json.load(fj)


    header = []
    for column_detail_in in sparcs_layout:
        header += [column_detail_in["Field Label"]]
    sparcs_dat_csv_file = sparcs_dat_file + ".csv"

    with open(sparcs_dat_file, "r") as fd:
        with open(sparcs_dat_csv_file, "w") as fw:

            csv_writer = csv.writer(fw)
            csv_writer.writerow(header)

            starting_positions = [(int(sl["From"]) - 1, int(sl["Size"])) for sl in sparcs_layout]
            print(starting_positions)

            i = 0
            row_to_write = []
            for line in fd:
                for start_pos in starting_positions:
                    row_to_write += [line[start_pos[0]:start_pos[0] + start_pos[1]].strip()]
                csv_writer.writerow(row_to_write)

                i += 1
                if i % 10000 == 0:
                    print("Read %s lines" % i)


if __name__ == "__main__":
    if len(sys.argv) == 1:
        main("/Volumes/untitled/LIMITEDOP12p1.DAT.sample.sample", "SPARCS OP Format_LIMITED.csv.json")
    else:
        main(sys.argv[1], sys.argv[2])