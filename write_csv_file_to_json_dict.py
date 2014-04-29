__author__ = 'janos'
import csv
import json

"""
Converts a CSV file into a quasi-json file
"""

def main(csv_file_name):

    with open(csv_file_name) as f:
        dict_reader = csv.DictReader(f)

        with open(csv_file_name + ".line.json", "w") as fw:

            for data in dict_reader:

                copied_data = data.copy()

                empty_keys = []
                for key in copied_data:
                    if copied_data[key] == "":
                        empty_keys += [key]

                for key in empty_keys:
                    copied_data.pop(key)

                if None in copied_data:
                    copied_data.pop(None)

                json.dump(copied_data, fw, sort_keys=True, indent=4, separators=(',', ': '))
                fw.write("\n")

if __name__ == "__main__":
    main("/Volumes/untitled/LIMITEDOP12p1.DAT.sample.sample.csv")