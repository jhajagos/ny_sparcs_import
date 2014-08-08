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

    repeated_names_dict = {}
    for row_dict in list_of_dicts:
        field_name = row_dict["Field Label"]
        if field_name in repeated_names_dict:
            repeated_names_dict[field_name] = 1
        else:
            repeated_names_dict[field_name] = 0

    for row_dict in list_of_dicts:
        field_name = row_dict["Field Label"]
        if repeated_names_dict[field_name]:
            counter = repeated_names_dict[field_name]
            row_dict["Field Label"] = row_dict["Field Label"] + " " + str(counter)
            repeated_names_dict[field_name] += 1

    with open(csv_file_name + ".json", "w") as fw:
        json.dump(list_of_dicts, fw,  sort_keys=True, indent=4, separators=(',', ': '))


if __name__ == "__main__":
    main("SPARCS OP Format_LIMITED.csv")
    main("SPARCS OP Format_LIMITED continuation.csv")
    main("SPARCS IP Format_LIMITED.csv")
    main("SPARCS IP Format_LIMITED continuation.csv")