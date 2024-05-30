# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"F81.2","system":"icd10"},{"code":"F99.X","system":"icd10"},{"code":"F80.3","system":"icd10"},{"code":"F60.7","system":"icd10"},{"code":"F02.8","system":"icd10"},{"code":"F81","system":"icd10"},{"code":"F81.0","system":"icd10"},{"code":"F80.1","system":"icd10"},{"code":"F81.3","system":"icd10"},{"code":"F99","system":"icd10"},{"code":"F60.1","system":"icd10"},{"code":"F80","system":"icd10"},{"code":"F60.4","system":"icd10"},{"code":"F81.8","system":"icd10"},{"code":"F83.X","system":"icd10"},{"code":"F83","system":"icd10"},{"code":"F60.8","system":"icd10"},{"code":"F41.8","system":"icd10"},{"code":"F80.0","system":"icd10"},{"code":"F81.1","system":"icd10"},{"code":"F60.3","system":"icd10"},{"code":"F80.2","system":"icd10"},{"code":"F60.2","system":"icd10"},{"code":"F80.8","system":"icd10"},{"code":"F60","system":"icd10"},{"code":"F60.5","system":"icd10"},{"code":"F60.6","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-mental-and-behavioural-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-mental-and-behavioural-disorders-natural-cause-specified---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-mental-and-behavioural-disorders-natural-cause-specified---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-mental-and-behavioural-disorders-natural-cause-specified---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
