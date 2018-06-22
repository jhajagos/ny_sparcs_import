__author__ = 'janos'
import json
import argparse
import os

def main(json_file_name, path_to_import_file, schema, table_name):

    with open(json_file_name, "r") as fj:
        sparcs_file_layout = json.load(fj)

    directory, file_name = os.path.split(path_to_import_file)
    load_sql_file = os.path.join(directory, table_name + ".sql")

    with open(load_sql_file + ".sql", "w") as fw:

        fw.write('DROP TABLE IF EXISTS "%s"."%s";\n\n' % (schema, table_name))

        sql_file_layout = 'create table "%s"."%s" (\n' % (schema, table_name)

        for layout in sparcs_file_layout:

            data_type = layout["Type"]

            size = int(layout["Size"])
            field_name = layout["Field Label"]

            if data_type == "NUM":
                if size < 10:
                    sql_file_layout += '   "%s" int,\n' % field_name
                elif size < 19:
                    sql_file_layout += '   "%s" bigint,\n' % field_name
                else:
                    sql_file_layout += '   "%s" varchar(%s),\n' % (field_name, size)
            else:
                sql_file_layout += '   "%s" varchar(%s),\n' % (field_name, size)

        sql_file_layout = sql_file_layout[:-2]
        sql_file_layout += ");\n"

        fw.write(sql_file_layout)

        sql_import_string = '''copy "%s" from '%s' WITH DELIMITER ','
CSV HEADER;\n\n''' % (table_name, path_to_import_file)
        fw.write("\n")
        fw.write(sql_import_string)

        for layout in sparcs_file_layout:
            field_name = layout["Field Label"]
            if field_name[0:6] == "Filler":
                sql_alter_table = """alter table "%s" drop column "%s";\n""" % (table_name, field_name)
                fw.write(sql_alter_table)


if __name__ == "__main__":

    arg_parse_obj = argparse.ArgumentParser(description="Create a load script for loadable PostGreSQL script")

    arg_parse_obj.add_argument("-f", "--csv-file-name", dest="csv_file_name", help="CSV file to load", required=True)
    arg_parse_obj.add_argument("-j", "--json-file-name", dest="json_file_name",
                               help="JSON file which has field information. See files ./support_files/", required=True)

    arg_parse_obj.add_argument("-s", "--schema", dest="schema", help="Database schema name", default="public")
    arg_parse_obj.add_argument("-t", "--table-name", dest="table_name", help="Database table to load",
                               default="sparcs_raw_import")

    arg_obj = arg_parse_obj.parse_args()

    main(arg_obj.json_file_name, arg_obj.csv_file_name, arg_obj.schema, arg_obj.table_name)



