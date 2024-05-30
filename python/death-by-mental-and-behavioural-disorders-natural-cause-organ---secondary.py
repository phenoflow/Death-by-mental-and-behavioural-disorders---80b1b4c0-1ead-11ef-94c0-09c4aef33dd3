# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"F06.0","system":"icd10"},{"code":"F28","system":"icd10"},{"code":"F06.2","system":"icd10"},{"code":"F06.3","system":"icd10"},{"code":"F09","system":"icd10"},{"code":"F09.X","system":"icd10"},{"code":"F51.1","system":"icd10"},{"code":"F52.8","system":"icd10"},{"code":"F52.2","system":"icd10"},{"code":"F04","system":"icd10"},{"code":"F51.3","system":"icd10"},{"code":"F52.9","system":"icd10"},{"code":"F52.1","system":"icd10"},{"code":"F28.X","system":"icd10"},{"code":"F52","system":"icd10"},{"code":"F06.4","system":"icd10"},{"code":"F29.X","system":"icd10"},{"code":"F51.2","system":"icd10"},{"code":"F52.3","system":"icd10"},{"code":"F06.5","system":"icd10"},{"code":"F29","system":"icd10"},{"code":"F52.7","system":"icd10"},{"code":"F51.0","system":"icd10"},{"code":"F52.0","system":"icd10"},{"code":"F52.6","system":"icd10"},{"code":"F52.4","system":"icd10"},{"code":"F51.8","system":"icd10"},{"code":"F52.5","system":"icd10"},{"code":"F51","system":"icd10"},{"code":"F04.X","system":"icd10"},{"code":"F07.0","system":"icd10"},{"code":"F06.6","system":"icd10"},{"code":"F51.5","system":"icd10"},{"code":"F51.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-mental-and-behavioural-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-mental-and-behavioural-disorders-natural-cause-organ---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-mental-and-behavioural-disorders-natural-cause-organ---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-mental-and-behavioural-disorders-natural-cause-organ---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
