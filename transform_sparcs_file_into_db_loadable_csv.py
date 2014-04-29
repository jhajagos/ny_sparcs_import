"""
The goal is to import SPARCS LDS outpatient database into a CSV which can be loaded into a
database.

"""

__author__ = 'janos'

import csv
import json


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

            row_to_write = []
            for line in fd:
                for start_pos in starting_positions:
                    row_to_write += [line[start_pos[0]:start_pos[0] + start_pos[1]].strip()]
                csv_writer.writerow(row_to_write)


if __name__ == "__main__":
    main("/Volumes/untitled/LIMITEDOP12p1.DAT.sample.sample", "SPARCS OP Format_LIMITED.csv.json")