create table "sparcs_raw_import" (
   "Discharge Sequential Number" varchar(14),
   "Continuation Indicator" varchar(1),
   "Record Sequence Number" varchar(3),
   "Record Sequence Count" varchar(3),
   "Filler 1" varchar(68),
   "Patient's Birth Date (DOB)" varchar(6),
   "Filler 2" varchar(2),
   "Age" varchar(3),
   "Age in Days " varchar(3),
   "Patient Sex" varchar(1),
   "Patient Race" varchar(2),
   "Patient Ethnicity" varchar(1),
   "Filler 3" varchar(36),
   "Patient City" varchar(15),
   "Patient State" varchar(2),
   "Patient Zip Code" varchar(5),
   "Filler 4" varchar(4),
   "Patient County Code" varchar(2),
   "SPARCS Region Code" varchar(2),
   "Newborn Flag" varchar(1),
   "Facility Identifier" varchar(6),
   "Facility Identifier Check Digit" varchar(1),
   "Facility Name" varchar(70),
   "Health Service Area" varchar(1),
   "Facility County" varchar(2),
   "Operating Certificate Number" varchar(7),
   "National Provider ID" varchar(10),
   "Attending Provider License Number" varchar(8),
   "Operating Physician License Number" varchar(8),
   "Other Provider License Number" varchar(8),
   "Source of Payment Typology 1" varchar(5),
   "Source of Payment Typology 2" varchar(5),
   "Source of Payment Typology 3" varchar(5),
   "Source of Payment 1" varchar(1),
   "Claim filing Indicator 1" varchar(2),
   "Payor ID Number 1" varchar(8),
   "Billing National Provider Identification 1" varchar(13),
   "Source of Payment 2" varchar(1),
   "Claim filing Indicator 2" varchar(2),
   "Payor ID Number 2" varchar(8),
   "Billing National Provider Identification 2" varchar(13),
   "Source of Payment 3" varchar(1),
   "Claim filing Indicator 3" varchar(2),
   "Payor ID Number 3" varchar(8),
   "Billing National Provider Identification 3" varchar(13),
   "Source of Payment 4" varchar(1),
   "Claim filing Indicator 4" varchar(2),
   "Payor ID Number 4" varchar(8),
   "Billing National Provider Identification 4" varchar(13),
   "Source of Payment 5" varchar(1),
   "Claim filing Indicator 5" varchar(2),
   "Payor ID Number 5" varchar(8),
   "Billing National Provider Identification 5" varchar(13),
   "Source of Payment 6" varchar(1),
   "Claim filing Indicator 6" varchar(2),
   "Payor ID Number 6" varchar(8),
   "Billing National Provider Identification 6" varchar(13),
   "Primary Expected Reimbursement" varchar(2),
   "Medicaid Rate Code" varchar(4),
   "Log Number" varchar(6),
   "Transaction Code" varchar(1),
   "Date Processed" varchar(8),
   "SPARCS Collector Code" varchar(3),
   "Claim Type" varchar(1),
   "Source File Type" varchar(1),
   "Residence Indicator" varchar(1),
   "Procedure Time" varchar(3),
   "Accident Hour" varchar(2),
   "Emergency Department (ED) Indicator" varchar(1),
   "Statement From Date" varchar(6),
   "Filler 5" varchar(2),
   "Statement Thru Date" varchar(6),
   "Filler 6" varchar(2),
   "Admission Date / Start of Care Date" varchar(6),
   "Filler 7" varchar(2),
   "Admit Weekday" varchar(3),
   "Admission Hour" varchar(2),
   "Dischage Date" varchar(6),
   "Filler 8" varchar(2),
   "Discharge Weekday" varchar(3),
   "Discharge Hour" varchar(2),
   "Same-day Discharge Indicator" varchar(1),
   "Patient Status" varchar(2),
   "Type of Bill" varchar(3),
   "Service Category Group" varchar(1),
   "Admitting Diagnosis Code" varchar(7),
   "Principal Diagnosis Code" varchar(7),
   "Other Diagnosis Code 1" varchar(7),
   "Diagnosis Code 2" varchar(7),
   "Diagnosis Code 3" varchar(7),
   "Diagnosis Code 4" varchar(7),
   "Diagnosis Code 5" varchar(7),
   "Diagnosis Code 6" varchar(7),
   "Diagnosis Code 7" varchar(7),
   "Diagnosis Code 8" varchar(7),
   "Diagnosis Code 9" varchar(7),
   "Diagnosis Code 10" varchar(7),
   "Diagnosis Code 11" varchar(7),
   "Diagnosis Code 12" varchar(7),
   "Diagnosis Code 13" varchar(7),
   "Diagnosis Code 14" varchar(7),
   "Diagnosis Code 15" varchar(7),
   "Diagnosis Code 16" varchar(7),
   "Diagnosis Code 17" varchar(7),
   "Diagnosis Code 18" varchar(7),
   "Diagnosis Code 19" varchar(7),
   "Diagnosis Code 20" varchar(7),
   "Diagnosis Code 21" varchar(7),
   "Diagnosis Code 22" varchar(7),
   "Diagnosis Code 23" varchar(7),
   "Diagnosis Code 24" varchar(7),
   "Clinical Classification Software (CCS) Diagnosis Category" varchar(3),
   "Accident Related Code" varchar(2),
   "Accident Related Date" varchar(6),
   "Filler 9" varchar(2),
   "External Cause of Injury " varchar(7),
   "Place of Injury Code" varchar(7),
   "Principal Procedure Code  " varchar(4),
   "Principal Procedure Date " varchar(6),
   "Filler 10" varchar(2),
   "Pre-admit procedure indicator 1" varchar(1),
   "Other Procedure Code 1 " varchar(4),
   "Other Procedure Date 1" varchar(6),
   "Filler 11" varchar(2),
   "Pre-admit procedure indicator 2" varchar(1),
   "Other Procedure Code 2" varchar(4),
   "Other Procedure Date 2" varchar(6),
   "Filler 12" varchar(2),
   "Pre-admit procedure indicator 3" varchar(1),
   "Other Procedure Code 3" varchar(4),
   "Other Procedure Date 3" varchar(6),
   "Filler 13" varchar(2),
   "Pre-admit procedure indicator 4" varchar(1),
   "Other Procedure Code 4" varchar(4),
   "Other Procedure Date 4" varchar(6),
   "Filler 14" varchar(2),
   "Pre-admit procedure indicator 5" varchar(1),
   "Other Procedure Code 5" varchar(4),
   "Other Procedure Date 5" varchar(6),
   "Filler 15" varchar(2),
   "Pre-admit procedure indicator 6" varchar(1),
   "Other Procedure Code 6" varchar(4),
   "Other Procedure Date 6" varchar(6),
   "Filler 16" varchar(2),
   "Pre-admit procedure indicator 7" varchar(1),
   "Other Procedure Code 7" varchar(4),
   "Other Procedure Date 7" varchar(6),
   "Filler 17" varchar(2),
   "Pre-admit procedure indicator 8" varchar(1),
   "Other Procedure Code 8" varchar(4),
   "Other Procedure Date 8" varchar(6),
   "Filler 18" varchar(2),
   "Pre-admit procedure indicator 9" varchar(1),
   "Other Procedure Code 9" varchar(4),
   "Other Procedure Date 9" varchar(6),
   "Filler 19" varchar(2),
   "Pre-admit procedure indicator 10" varchar(1),
   "Other Procedure Code 10" varchar(4),
   "Other Procedure Date 10" varchar(6),
   "Filler 20" varchar(2),
   "Pre-admit procedure indicator 11" varchar(1),
   "Other Procedure Code 11" varchar(4),
   "Other Procedure Date 11" varchar(6),
   "Filler 21" varchar(2),
   "Pre-admit procedure indicator 12" varchar(1),
   "Other Procedure Code 12" varchar(4),
   "Other Procedure Date 12" varchar(6),
   "Filler 22" varchar(2),
   "Pre-admit procedure indicator 13" varchar(1),
   "Other Procedure Code 13" varchar(4),
   "Other Procedure Date 13" varchar(6),
   "Filler 23" varchar(2),
   "Pre-admit procedure indicator 14" varchar(1),
   "Other Procedure Code 14" varchar(4),
   "Other Procedure Date 14" varchar(6),
   "Filler 24" varchar(2),
   "Pre-admit procedure indicator 15" varchar(1),
   "Clinical Classification Software (CCS) Procedure Category" varchar(3),
   "Method of Anesthesia Used" varchar(2),
   "Age Warning Flag" varchar(1),
   "Procedure Date Warning Flag" varchar(1),
   "Procedure Coding Method" varchar(1),
   "Grouping Claim Processed Flag" varchar(2),
   "Claim Processed Warnings/Messages" varchar(10),
   "Number of Visits" varchar(3),
   "APG Version Used" varchar(12),
   "APG List Return Code" varchar(2),
   "APG List Error Location" varchar(3),
   "Item ID number" varchar(3),
   "Error Return Code" varchar(3),
   "Claim APG Payment" varchar(8),
   "Claim Transition Visit APG Payment" varchar(8),
   "Claim Existing Payment" varchar(8),
   "Claim Blended Payment" varchar(8),
   "Claim Add-on Payment" varchar(8),
   "Total Claim Payment" varchar(8),
   "Claim Non-transition Payment" varchar(8),
   "Claim Adjusted APG Weight" varchar(9),
   "Total Claim Full APG Weight" varchar(9),
   "Claim Payment" varchar(8),
   "AMI Warning Flag" varchar(1),
   "Heart Rate on Arrival" varchar(3),
   "Systolic BP on Arrival" varchar(3),
   "Diastolic BP on Arrival" varchar(3),
   "AIDS / HIV Flag" varchar(1),
   "Abortion Flag" varchar(1),
   "Total Charges" varchar(12),
   "Ancillary Total Charges" varchar(10),
   "Total Non-Covered Charges" varchar(12),
   "Total Non-Covered Ancillary Charges" varchar(10),
   "Revenue Code 1" varchar(4),
   "Revenue Type 1" varchar(1),
   "HCPCS/CPT Procedure Code 1" varchar(5),
   "Procedure Modifier Code #1 - 1" varchar(2),
   "Procedure Modifier Code #2 - 1" varchar(2),
   "Service Charge 1" varchar(10),
   "Unit Type 1" varchar(2),
   "Unit Quantity 1" varchar(8),
   "Non-Covered Charge 1" varchar(10),
   "Service Date 1" varchar(6),
   "Filler 25" varchar(2),
   "Pre-visit Indicator 1" varchar(1),
   "Line item number 1" varchar(3),
   "Visit ID 1" varchar(3),
   "Lines in Visit 1" varchar(3),
   "Visit Date 1" varchar(6),
   "Filler 26" varchar(2),
   "Visit Processed Flag 1" varchar(1),
   "Visit Processed Warnings/ Messages 1" varchar(10),
   "Overall Visit Type 1" varchar(2),
   "Medical Visit Diagnosis 1" varchar(7),
   "Final APG Assignment 1" varchar(5),
   "Final APG Type 1" varchar(2),
   "Final APG Category 1" varchar(2),
   "Multiple Significant Procedure (SP) Discounting Flag 1" varchar(1),
   "Repeat Ancillary Discounting Flag 1" varchar(1),
   "Bilateral Discounting Flag 1" varchar(1),
   "Terminated Procedure Discounting Flag 1" varchar(1),
   "Line Item Unassigned Flag 1" varchar(2),
   "Packaged Per Diem Flag 1" varchar(1),
   "Packaging Flag 1" varchar(1),
   "Same Significant Procedure (SP) Consolidation Flag 1" varchar(1),
   "Clinical Significant Procedure (SP) Consolidation Flag 1" varchar(1),
   "Line Item Action Flag 1" varchar(2),
   "Service Item ID number 1" varchar(3),
   "Line Item APG Payment 1" varchar(8),
   "Line Item Existing Payment 1" varchar(8),
   "Line Item Blended Payment 1" varchar(8),
   "Line Item Add-on Payment 1" varchar(8),
   "Line Item Total Payment 1" varchar(8),
   "Line Item Blend Percent 1" varchar(5),
   "Line Item Adjusted APG Weight 1" varchar(9),
   "Line Item Full APG Weight 1" varchar(9),
   "Line Item Payment Percent 1" varchar(6),
   "Line Item Payment Action 1" varchar(2),
   "Line Item Paid Units 1" varchar(7),
   "Line Item Payment Adjustment Flag 1" varchar(2),
   "Visit APG Payment 1" varchar(8),
   "Visit Transition APG Payment 1" varchar(8),
   "Visit Existing Payment 1" varchar(8),
   "Visit Blended Payment 1" varchar(8),
   "Visit Add-on Payment 1" varchar(8),
   "Visit Payment 1" varchar(8),
   "Visit Non-transition Payment 1" varchar(8),
   "Visit Adjusted APG Weight 1" varchar(9),
   "Visit Full APG Weight 1" varchar(9),
   "Revenue Code 2" varchar(4),
   "Revenue Type 2" varchar(1),
   "HCPCS/CPT Procedure Code 2" varchar(5),
   "Procedure Modifier Code #1 - 2" varchar(2),
   "Procedure Modifier Code #2 - 2" varchar(2),
   "Service Charge 2" varchar(10),
   "Unit Type 2" varchar(2),
   "Unit Quantity 2" varchar(8),
   "Non-Covered Charge 2" varchar(10),
   "Service Date 2" varchar(6),
   "Filler 27" varchar(2),
   "Pre-visit Indicator 2" varchar(1),
   "Line item number 2" varchar(3),
   "Visit ID 2" varchar(3),
   "Lines in Visit 2" varchar(3),
   "Visit Date 2" varchar(6),
   "Filler 28" varchar(2),
   "Visit Processed Flag 2" varchar(1),
   "Visit Processed Warnings/ Messages 2" varchar(10),
   "Overall Visit Type 2" varchar(2),
   "Medical Visit Diagnosis 2" varchar(7),
   "Final APG Assignment 2" varchar(5),
   "Final APG Type 2" varchar(2),
   "Final APG Category 2" varchar(2),
   "Multiple Significant Procedure (SP) Discounting Flag 2" varchar(1),
   "Repeat Ancillary Discounting Flag 2" varchar(1),
   "Bilateral Discounting Flag 2" varchar(1),
   "Terminated Procedure Discounting Flag 2" varchar(1),
   "Line Item Unassigned Flag 2" varchar(2),
   "Packaged Per Diem Flag 2" varchar(1),
   "Packaging Flag 2" varchar(1),
   "Same Significant Procedure (SP) Consolidation Flag 2" varchar(1),
   "Clinical Significant Procedure (SP) Consolidation Flag 2" varchar(1),
   "Line Item Action Flag 2" varchar(2),
   "Service Item ID number 2" varchar(3),
   "Line Item APG Payment 2" varchar(8),
   "Line Item Existing Payment 2" varchar(8),
   "Line Item Blended Payment 2" varchar(8),
   "Line Item Add-on Payment 2" varchar(8),
   "Line Item Total Payment 2" varchar(8),
   "Line Item Blend Percent 2" varchar(5),
   "Line Item Adjusted APG Weight 2" varchar(9),
   "Line Item Full APG Weight 2" varchar(9),
   "Line Item Payment Percent 2" varchar(6),
   "Line Item Payment Action 2" varchar(2),
   "Line Item Paid Units 2" varchar(7),
   "Line Item Payment Adjustment Flag 2" varchar(2),
   "Visit APG Payment 2" varchar(8),
   "Visit Transition APG Payment 2" varchar(8),
   "Visit Existing Payment 2" varchar(8),
   "Visit Blended Payment 2" varchar(8),
   "Visit Add-on Payment 2" varchar(8),
   "Visit Payment 2" varchar(8),
   "Visit Non-transition Payment 2" varchar(8),
   "Visit Adjusted APG Weight 2" varchar(9),
   "Visit Full APG Weight 2" varchar(9),
   "Revenue Code 3" varchar(4),
   "Revenue Type 3" varchar(1),
   "HCPCS/CPT Procedure Code 3" varchar(5),
   "Procedure Modifier Code #1 - 3" varchar(2),
   "Procedure Modifier Code #2 - 3" varchar(2),
   "Service Charge 3" varchar(10),
   "Unit Type 3" varchar(2),
   "Unit Quantity 3" varchar(8),
   "Non-Covered Charge 3" varchar(10),
   "Service Date 3" varchar(6),
   "Filler 29" varchar(2),
   "Pre-visit Indicator 3" varchar(1),
   "Line item number 3" varchar(3),
   "Visit ID 3" varchar(3),
   "Lines in Visit 3" varchar(3),
   "Visit Date 3" varchar(6),
   "Filler 30" varchar(2),
   "Visit Processed Flag 3" varchar(1),
   "Visit Processed Warnings/ Messages 3" varchar(10),
   "Overall Visit Type 3" varchar(2),
   "Medical Visit Diagnosis 3" varchar(7),
   "Final APG Assignment 3" varchar(5),
   "Final APG Type 3" varchar(2),
   "Final APG Category 3" varchar(2),
   "Multiple Significant Procedure (SP) Discounting Flag 3" varchar(1),
   "Repeat Ancillary Discounting Flag 3" varchar(1),
   "Bilateral Discounting Flag 3" varchar(1),
   "Terminated Procedure Discounting Flag 3" varchar(1),
   "Line Item Unassigned Flag 3" varchar(2),
   "Packaged Per Diem Flag 3" varchar(1),
   "Packaging Flag 3" varchar(1),
   "Same Significant Procedure (SP) Consolidation Flag 3" varchar(1),
   "Clinical Significant Procedure (SP) Consolidation Flag 3" varchar(1),
   "Line Item Action Flag 3" varchar(2),
   "Service Item ID number 3" varchar(3),
   "Line Item APG Payment 3" varchar(8),
   "Line Item Existing Payment 3" varchar(8),
   "Line Item Blended Payment 3" varchar(8),
   "Line Item Add-on Payment 3" varchar(8),
   "Line Item Total Payment 3" varchar(8),
   "Line Item Blend Percent 3" varchar(5),
   "Line Item Adjusted APG Weight 3" varchar(9),
   "Line Item Full APG Weight 3" varchar(9),
   "Line Item Payment Percent 3" varchar(6),
   "Line Item Payment Action 3" varchar(2),
   "Line Item Paid Units 3" varchar(7),
   "Line Item Payment Adjustment Flag 3" varchar(2),
   "Visit APG Payment 3" varchar(8),
   "Visit Transition APG Payment 3" varchar(8),
   "Visit Existing Payment 3" varchar(8),
   "Visit Blended Payment 3" varchar(8),
   "Visit Add-on Payment 3" varchar(8),
   "Visit Payment 3" varchar(8),
   "Visit Non-transition Payment 3" varchar(8),
   "Visit Adjusted APG Weight 3" varchar(9),
   "Visit Full APG Weight 3" varchar(9),
   "Revenue Code 4" varchar(4),
   "Revenue Type 4" varchar(1),
   "HCPCS/CPT Procedure Code 4" varchar(5),
   "Procedure Modifier Code #1 - 4" varchar(2),
   "Procedure Modifier Code #2 - 4" varchar(2),
   "Service Charge 4" varchar(10),
   "Unit Type 4" varchar(2),
   "Unit Quantity 4" varchar(8),
   "Non-Covered Charge 4" varchar(10),
   "Service Date 4" varchar(6),
   "Filler 31" varchar(2),
   "Pre-visit Indicator 4" varchar(1),
   "Line item number 4" varchar(3),
   "Visit ID 4" varchar(3),
   "Lines in Visit 4" varchar(3),
   "Visit Date 4" varchar(6),
   "Filler 32" varchar(2),
   "Visit Processed Flag 4" varchar(1),
   "Visit Processed Warnings/ Messages 4" varchar(10),
   "Overall Visit Type 4" varchar(2),
   "Medical Visit Diagnosis 4" varchar(7),
   "Final APG Assignment 4" varchar(5),
   "Final APG Type 4" varchar(2),
   "Final APG Category 4" varchar(2),
   "Multiple Significant Procedure (SP) Discounting Flag 4" varchar(1),
   "Repeat Ancillary Discounting Flag 4" varchar(1),
   "Bilateral Discounting Flag 4" varchar(1),
   "Terminated Procedure Discounting Flag 4" varchar(1),
   "Line Item Unassigned Flag 4" varchar(2),
   "Packaged Per Diem Flag 4" varchar(1),
   "Packaging Flag 4" varchar(1),
   "Same Significant Procedure (SP) Consolidation Flag 4" varchar(1),
   "Clinical Significant Procedure (SP) Consolidation Flag 4" varchar(1),
   "Line Item Action Flag 4" varchar(2),
   "Service Item ID number 4" varchar(3),
   "Line Item APG Payment 4" varchar(8),
   "Line Item Existing Payment 4" varchar(8),
   "Line Item Blended Payment 4" varchar(8),
   "Line Item Add-on Payment 4" varchar(8),
   "Line Item Total Payment 4" varchar(8),
   "Line Item Blend Percent 4" varchar(5),
   "Line Item Adjusted APG Weight 4" varchar(9),
   "Line Item Full APG Weight 4" varchar(9),
   "Line Item Payment Percent 4" varchar(6),
   "Line Item Payment Action 4" varchar(2),
   "Line Item Paid Units 4" varchar(7),
   "Line Item Payment Adjustment Flag 4" varchar(2),
   "Visit APG Payment 4" varchar(8),
   "Visit Transition APG Payment 4" varchar(8),
   "Visit Existing Payment 4" varchar(8),
   "Visit Blended Payment 4" varchar(8),
   "Visit Add-on Payment 4" varchar(8),
   "Visit Payment 4" varchar(8),
   "Visit Non-transition Payment 4" varchar(8),
   "Visit Adjusted APG Weight 4" varchar(9),
   "Visit Full APG Weight 4" varchar(9),
   "Revenue Code 5" varchar(4),
   "Revenue Type 5" varchar(1),
   "HCPCS/CPT Procedure Code 5" varchar(5),
   "Procedure Modifier Code #1 - 5" varchar(2),
   "Procedure Modifier Code #2 - 5" varchar(2),
   "Service Charge 5" varchar(10),
   "Unit Type 5" varchar(2),
   "Unit Quantity 5" varchar(8),
   "Non-Covered Charge 5" varchar(10),
   "Service Date 5" varchar(6),
   "Filler 33" varchar(2),
   "Pre-visit Indicator 5" varchar(1),
   "Line item number 5" varchar(3),
   "Visit ID 5" varchar(3),
   "Lines in Visit 5" varchar(3),
   "Visit Date 5" varchar(6),
   "Filler 34" varchar(2),
   "Visit Processed Flag 5" varchar(1),
   "Visit Processed Warnings/ Messages 5" varchar(10),
   "Overall Visit Type 5" varchar(2),
   "Medical Visit Diagnosis 5" varchar(7),
   "Final APG Assignment 5" varchar(5),
   "Final APG Type 5" varchar(2),
   "Final APG Category 5" varchar(2),
   "Multiple Significant Procedure (SP) Discounting Flag 5" varchar(1),
   "Repeat Ancillary Discounting Flag 5" varchar(1),
   "Bilateral Discounting Flag 5" varchar(1),
   "Terminated Procedure Discounting Flag 5" varchar(1),
   "Line Item Unassigned Flag 5" varchar(2),
   "Packaged Per Diem Flag 5" varchar(1),
   "Packaging Flag 5" varchar(1),
   "Same Significant Procedure (SP) Consolidation Flag 5" varchar(1),
   "Clinical Significant Procedure (SP) Consolidation Flag 5" varchar(1),
   "Line Item Action Flag 5" varchar(2),
   "Service Item ID number 5" varchar(3),
   "Line Item APG Payment 5" varchar(8),
   "Line Item Existing Payment 5" varchar(8),
   "Line Item Blended Payment 5" varchar(8),
   "Line Item Add-on Payment 5" varchar(8),
   "Line Item Total Payment 5" varchar(8),
   "Line Item Blend Percent 5" varchar(5),
   "Line Item Adjusted APG Weight 5" varchar(9),
   "Line Item Full APG Weight 5" varchar(9),
   "Line Item Payment Percent 5" varchar(6),
   "Line Item Payment Action 5" varchar(2),
   "Line Item Paid Units 5" varchar(7),
   "Line Item Payment Adjustment Flag 5" varchar(2),
   "Visit APG Payment 5" varchar(8),
   "Visit Transition APG Payment 5" varchar(8),
   "Visit Existing Payment 5" varchar(8),
   "Visit Blended Payment 5" varchar(8),
   "Visit Add-on Payment 5" varchar(8),
   "Visit Payment 5" varchar(8),
   "Visit Non-transition Payment 5" varchar(8),
   "Visit Adjusted APG Weight 5" varchar(9),
   "Visit Full APG Weight 5" varchar(9),
   "Revenue Code 6" varchar(4),
   "Revenue Type 6" varchar(1),
   "HCPCS/CPT Procedure Code 6" varchar(5),
   "Procedure Modifier Code #1 - 6" varchar(2),
   "Procedure Modifier Code #2 - 6" varchar(2),
   "Service Charge 6" varchar(10),
   "Unit Type 6" varchar(2),
   "Unit Quantity 6" varchar(8),
   "Non-Covered Charge 6" varchar(10),
   "Service Date 6" varchar(6),
   "Filler 35" varchar(2),
   "Pre-visit Indicator 6" varchar(1),
   "Line item number 6" varchar(3),
   "Visit ID 6" varchar(3),
   "Lines in Visit 6" varchar(3),
   "Visit Date 6" varchar(6),
   "Filler 36" varchar(2),
   "Visit Processed Flag 6" varchar(1),
   "Visit Processed Warnings/ Messages 6" varchar(10),
   "Overall Visit Type 6" varchar(2),
   "Medical Visit Diagnosis 6" varchar(7),
   "Final APG Assignment 6" varchar(5),
   "Final APG Type 6" varchar(2),
   "Final APG Category 6" varchar(2),
   "Multiple Significant Procedure (SP) Discounting Flag 6" varchar(1),
   "Repeat Ancillary Discounting Flag 6" varchar(1),
   "Bilateral Discounting Flag 6" varchar(1),
   "Terminated Procedure Discounting Flag 6" varchar(1),
   "Line Item Unassigned Flag 6" varchar(2),
   "Packaged Per Diem Flag 6" varchar(1),
   "Packaging Flag 6" varchar(1),
   "Same Significant Procedure (SP) Consolidation Flag 6" varchar(1),
   "Clinical Significant Procedure (SP) Consolidation Flag 6" varchar(1),
   "Line Item Action Flag 6" varchar(2),
   "Service Item ID number 6" varchar(3),
   "Line Item APG Payment 6" varchar(8),
   "Line Item Existing Payment 6" varchar(8),
   "Line Item Blended Payment 6" varchar(8),
   "Line Item Add-on Payment 6" varchar(8),
   "Line Item Total Payment 6" varchar(8),
   "Line Item Blend Percent 6" varchar(5),
   "Line Item Adjusted APG Weight 6" varchar(9),
   "Line Item Full APG Weight 6" varchar(9),
   "Line Item Payment Percent 6" varchar(6),
   "Line Item Payment Action 6" varchar(2),
   "Line Item Paid Units 6" varchar(7),
   "Line Item Payment Adjustment Flag 6" varchar(2),
   "Visit APG Payment 6" varchar(8),
   "Visit Transition APG Payment 6" varchar(8),
   "Visit Existing Payment 6" varchar(8),
   "Visit Blended Payment 6" varchar(8),
   "Visit Add-on Payment 6" varchar(8),
   "Visit Payment 6" varchar(8),
   "Visit Non-transition Payment 6" varchar(8),
   "Visit Adjusted APG Weight 6" varchar(9),
   "Visit Full APG Weight 6" varchar(9),
   "Revenue Code 7" varchar(4),
   "Revenue Type 7" varchar(1),
   "HCPCS/CPT Procedure Code 7" varchar(5),
   "Procedure Modifier Code #1 - 7" varchar(2),
   "Procedure Modifier Code #2 - 7" varchar(2),
   "Service Charge 7" varchar(10),
   "Unit Type 7" varchar(2),
   "Unit Quantity 7" varchar(8),
   "Non-Covered Charge 7" varchar(10),
   "Service Date 7" varchar(6),
   "Filler 37" varchar(2),
   "Pre-visit Indicator 7" varchar(1),
   "Line item number 7" varchar(3),
   "Visit ID 7" varchar(3),
   "Lines in Visit 7" varchar(3),
   "Visit Date 7" varchar(6),
   "Filler 38" varchar(2),
   "Visit Processed Flag 7" varchar(1),
   "Visit Processed Warnings/ Messages 7" varchar(10),
   "Overall Visit Type 7" varchar(2),
   "Medical Visit Diagnosis 7" varchar(7),
   "Final APG Assignment 7" varchar(5),
   "Final APG Type 7" varchar(2),
   "Final APG Category 7" varchar(2),
   "Multiple Significant Procedure (SP) Discounting Flag 7" varchar(1),
   "Repeat Ancillary Discounting Flag 7" varchar(1),
   "Bilateral Discounting Flag 7" varchar(1),
   "Terminated Procedure Discounting Flag 7" varchar(1),
   "Line Item Unassigned Flag 7" varchar(2),
   "Packaged Per Diem Flag 7" varchar(1),
   "Packaging Flag 7" varchar(1),
   "Same Significant Procedure (SP) Consolidation Flag 7" varchar(1),
   "Clinical Significant Procedure (SP) Consolidation Flag 7" varchar(1),
   "Line Item Action Flag 7" varchar(2),
   "Service Item ID number 7" varchar(3),
   "Line Item APG Payment 7" varchar(8),
   "Line Item Existing Payment 7" varchar(8),
   "Line Item Blended Payment 7" varchar(8),
   "Line Item Add-on Payment 7" varchar(8),
   "Line Item Total Payment 7" varchar(8),
   "Line Item Blend Percent 7" varchar(5),
   "Line Item Adjusted APG Weight 7" varchar(9),
   "Line Item Full APG Weight 7" varchar(9),
   "Line Item Payment Percent 7" varchar(6),
   "Line Item Payment Action 7" varchar(2),
   "Line Item Paid Units 7" varchar(7),
   "Line Item Payment Adjustment Flag 7" varchar(2),
   "Visit APG Payment 7" varchar(8),
   "Visit Transition APG Payment 7" varchar(8),
   "Visit Existing Payment 7" varchar(8),
   "Visit Blended Payment 7" varchar(8),
   "Visit Add-on Payment 7" varchar(8),
   "Visit Payment 7" varchar(8),
   "Visit Non-transition Payment 7" varchar(8),
   "Visit Adjusted APG Weight 7" varchar(9),
   "Visit Full APG Weight 7" varchar(9),
   "Reserved " varchar(200),
   "Encrypted Patient Control Number" varchar(44),
   "Encrypted Medical Record Number" varchar(44),
   "Encrypted Unique Personal Identifier" varchar(22),
   "Encrypted Enhanced Unique Personal Identifier" varchar(44),
   "Encrypted Patient Date of Birth" varchar(22),
   "Encrypted Patient's Address Line 1" varchar(44),
   "Encrypted Patient's Address Line 2" varchar(44),
   "Encrypted Patient Postal Service Zip Code  and Extension Code" varchar(22),
   "Encrypted Statement From Date" varchar(22),
   "Encrypted Statement Thru Date" varchar(22),
   "Encrypted Admission / Start of Care Date" varchar(22),
   "Encrypted Discharge Date" varchar(22),
   "Encrypted Accident Related Date" varchar(22),
   "Encrypted Principal Procedure Date 1" varchar(22),
   "Encrypted Principal Procedure Date 2" varchar(22),
   "Encrypted Principal Procedure Date 3" varchar(22),
   "Encrypted Principal Procedure Date 4" varchar(22),
   "Encrypted Principal Procedure Date 5" varchar(22),
   "Encrypted Principal Procedure Date 6" varchar(22),
   "Encrypted Principal Procedure Date 7" varchar(22),
   "Encrypted Principal Procedure Date 8" varchar(22),
   "Encrypted Principal Procedure Date 9" varchar(22),
   "Encrypted Principal Procedure Date 10" varchar(22),
   "Encrypted Principal Procedure Date 11" varchar(22),
   "Encrypted Principal Procedure Date 12" varchar(22),
   "Encrypted Principal Procedure Date 13" varchar(22),
   "Encrypted Principal Procedure Date 14" varchar(22),
   "Encrypted Principal Procedure Date 15" varchar(22),
   "Encrypted Service Date 1" varchar(22),
   "Encrypted Visit Date 1" varchar(22),
   "Encrypted Service Date 2" varchar(22),
   "Encrypted Visit Date 2" varchar(22),
   "Encrypted Service Date 3" varchar(22),
   "Encrypted Visit Date 3" varchar(22),
   "Encrypted Service Date 4" varchar(22),
   "Encrypted Visit Date 4" varchar(22),
   "Encrypted Service Date 5" varchar(22),
   "Encrypted Visit Date 5" varchar(22),
   "Encrypted Service Date 6" varchar(22),
   "Encrypted Visit Date 6" varchar(22),
   "Encrypted Service Date 7" varchar(22),
   "Encrypted Visit Date 7" varchar(22));

copy "sparcs_raw_import_2012" from '/data/sparcs/import/LIMITEDOP12p1.DAT.csv' WITH DELIMITER ','
CSV HEADER;alter table "sparcs_raw_import_2012" drop column "Filler 1";
alter table "sparcs_raw_import_2012" drop column "Filler 2";
alter table "sparcs_raw_import_2012" drop column "Filler 3";
alter table "sparcs_raw_import_2012" drop column "Filler 4";
alter table "sparcs_raw_import_2012" drop column "Filler 5";
alter table "sparcs_raw_import_2012" drop column "Filler 6";
alter table "sparcs_raw_import_2012" drop column "Filler 7";
alter table "sparcs_raw_import_2012" drop column "Filler 8";
alter table "sparcs_raw_import_2012" drop column "Filler 9";
alter table "sparcs_raw_import_2012" drop column "Filler 10";
alter table "sparcs_raw_import_2012" drop column "Filler 11";
alter table "sparcs_raw_import_2012" drop column "Filler 12";
alter table "sparcs_raw_import_2012" drop column "Filler 13";
alter table "sparcs_raw_import_2012" drop column "Filler 14";
alter table "sparcs_raw_import_2012" drop column "Filler 15";
alter table "sparcs_raw_import_2012" drop column "Filler 16";
alter table "sparcs_raw_import_2012" drop column "Filler 17";
alter table "sparcs_raw_import_2012" drop column "Filler 18";
alter table "sparcs_raw_import_2012" drop column "Filler 19";
alter table "sparcs_raw_import_2012" drop column "Filler 20";
alter table "sparcs_raw_import_2012" drop column "Filler 21";
alter table "sparcs_raw_import_2012" drop column "Filler 22";
alter table "sparcs_raw_import_2012" drop column "Filler 23";
alter table "sparcs_raw_import_2012" drop column "Filler 24";
alter table "sparcs_raw_import_2012" drop column "Filler 25";
alter table "sparcs_raw_import_2012" drop column "Filler 26";
alter table "sparcs_raw_import_2012" drop column "Filler 27";
alter table "sparcs_raw_import_2012" drop column "Filler 28";
alter table "sparcs_raw_import_2012" drop column "Filler 29";
alter table "sparcs_raw_import_2012" drop column "Filler 30";
alter table "sparcs_raw_import_2012" drop column "Filler 31";
alter table "sparcs_raw_import_2012" drop column "Filler 32";
alter table "sparcs_raw_import_2012" drop column "Filler 33";
alter table "sparcs_raw_import_2012" drop column "Filler 34";
alter table "sparcs_raw_import_2012" drop column "Filler 35";
alter table "sparcs_raw_import_2012" drop column "Filler 36";
alter table "sparcs_raw_import_2012" drop column "Filler 37";
alter table "sparcs_raw_import_2012" drop column "Filler 38";
