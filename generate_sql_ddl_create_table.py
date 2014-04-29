__author__ = 'janos'
import json

def main(json_file_name, path_to_import_file, table_name="sparcs_raw_import"):

    with open(json_file_name, "r") as fj:
        sparcs_file_layout = json.load(fj)

    with open(json_file_name + ".sql", "w") as fw:

        sql_file_layout = 'create table "sparcs_raw_import" (\n'

        for layout in sparcs_file_layout:
            sql_file_layout += '   "%s" varchar(%s),\n' % (layout["Field Label"], layout["Size"])

        sql_file_layout = sql_file_layout[:-2]
        sql_file_layout += ");\n"

        fw.write(sql_file_layout)

        sql_import_string = '''copy "%s" from '%s' WITH DELIMITER ','
CSV HEADER;''' % (table_name, path_to_import_file)
        fw.write("\n")
        fw.write(sql_import_string)

        for layout in sparcs_file_layout:
            field_name = layout["Field Label"]
            if field_name[0:6] == "Filler":
                sql_alter_table = """alter table "%s" drop column "%s";\n""" % (table_name, field_name)
                fw.write(sql_alter_table)



if __name__ == "__main__":
    main("SPARCS OP Format_LIMITED.csv.json", "/data/sparcs/import/LIMITEDOP12p1.DAT.csv", "sparcs_raw_import_2012")