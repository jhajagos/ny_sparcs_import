DROP TABLE IF EXISTS "sparcs_raw_import_enhanced_encrypted_ip_2013";

create table "sparcs_raw_import_enhanced_encrypted_ip_2013" (
   "Discharge Sequential Number" bigint,
   "Continuation Indicator" int,
   "Record Sequence Number" int,
   "Record Sequence Count" int,
   "Encrypted Enhanced Unique Personal Identifier" varchar(44));

copy "sparcs_raw_import_enhanced_encrypted_ip_2013" from '/data/db_to_load/txt/sparcs/IP_Enc_EUPID13.DAT.csv' WITH DELIMITER ','
CSV HEADER;

