# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"F20.6","system":"icd10"},{"code":"F20.3","system":"icd10"},{"code":"F20.5","system":"icd10"},{"code":"F20.9","system":"icd10"},{"code":"F20.1","system":"icd10"},{"code":"F20.8","system":"icd10"},{"code":"F20","system":"icd10"},{"code":"F23.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-mental-and-behavioural-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-mental-and-behavioural-disorders-natural-cause-schizophrenialike---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-mental-and-behavioural-disorders-natural-cause-schizophrenialike---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-mental-and-behavioural-disorders-natural-cause-schizophrenialike---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
