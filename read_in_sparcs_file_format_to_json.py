__author__ = 'janos'

import csv
import json

def main(csv_file_name):

    with open(csv_file_name) as f:
        r = csv.DictReader(f)
        list_of_dicts = []
        for row_dict in r:
            if "" in row_dict:
                row_dict.pop("")
            list_of_dicts += [row_dict]

    number_filler_fields = 1
    for row_dict in list_of_dicts:
        if row_dict["Field Label"] == "Filler":
            row_dict["Field Label"] = "Filler %s" % number_filler_fields
            number_filler_fields += 1

    with open(csv_file_name + ".json", "w") as fw:
        json.dump(list_of_dicts, fw,  sort_keys=True, indent=4, separators=(',', ': '))


if __name__ == "__main__":
    main("SPARCS OP Format_LIMITED.csv")
    main("SPARCS OP Format_LIMITED continuation.csv")