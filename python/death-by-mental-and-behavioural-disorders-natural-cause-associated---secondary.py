# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"F66","system":"icd10"},{"code":"F66.8","system":"icd10"},{"code":"F53.0","system":"icd10"},{"code":"F59.X","system":"icd10"},{"code":"F54","system":"icd10"},{"code":"F50.5","system":"icd10"},{"code":"F54.X","system":"icd10"},{"code":"F50.4","system":"icd10"},{"code":"F53.1","system":"icd10"},{"code":"F66.1","system":"icd10"},{"code":"F59","system":"icd10"},{"code":"F84.4","system":"icd10"},{"code":"F66.2","system":"icd10"},{"code":"F66.9","system":"icd10"},{"code":"F53","system":"icd10"},{"code":"F53.8","system":"icd10"},{"code":"F66.0","system":"icd10"},{"code":"F53.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-mental-and-behavioural-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-mental-and-behavioural-disorders-natural-cause-associated---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-mental-and-behavioural-disorders-natural-cause-associated---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-mental-and-behavioural-disorders-natural-cause-associated---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
