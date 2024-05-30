# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"F79.8","system":"icd10"},{"code":"F01.9","system":"icd10"},{"code":"F92.9","system":"icd10"},{"code":"F60.9","system":"icd10"},{"code":"F03.X","system":"icd10"},{"code":"F44.9","system":"icd10"},{"code":"F22.9","system":"icd10"},{"code":"F45.9","system":"icd10"},{"code":"F69.X","system":"icd10"},{"code":"F42.9","system":"icd10"},{"code":"F80.9","system":"icd10"},{"code":"F00.9","system":"icd10"},{"code":"F84.9","system":"icd10"},{"code":"F03","system":"icd10"},{"code":"F30.9","system":"icd10"},{"code":"F90.9","system":"icd10"},{"code":"F63.9","system":"icd10"},{"code":"F41.9","system":"icd10"},{"code":"F64.9","system":"icd10"},{"code":"F69","system":"icd10"},{"code":"F79","system":"icd10"},{"code":"F81.9","system":"icd10"},{"code":"F91.9","system":"icd10"},{"code":"F50.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-mental-and-behavioural-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-mental-and-behavioural-disorders-natural-cause-unspec---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-mental-and-behavioural-disorders-natural-cause-unspec---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-mental-and-behavioural-disorders-natural-cause-unspec---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
