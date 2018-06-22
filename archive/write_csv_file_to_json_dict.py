__author__ = 'janos'
import csv
import json

"""
    Converts a CSV file into a quasi-json file where each line is a JSON
    dict.
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

                i += 1
                if i % log_every_ith_record == 0:
                    updated_time = time.time()
                    time_difference = updated_time - loop_time

                    print("Read %s lines in %s seconds" % (i, time_difference))
                    loop_time = updated_time


if __name__ == "__main__":
    main("/Volumes/untitled/LIMITEDOP12p1.DAT.sample.sample.csv")