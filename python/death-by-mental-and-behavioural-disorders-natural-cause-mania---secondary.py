# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"F63.1","system":"icd10"},{"code":"F18.1","system":"icd10"},{"code":"F18.2","system":"icd10"},{"code":"F30.2","system":"icd10"},{"code":"F15","system":"icd10"},{"code":"F18.8","system":"icd10"},{"code":"F19.2","system":"icd10"},{"code":"F15.6","system":"icd10"},{"code":"F19.8","system":"icd10"},{"code":"F13.0","system":"icd10"},{"code":"F17.2","system":"icd10"},{"code":"F17.1","system":"icd10"},{"code":"F13.8","system":"icd10"},{"code":"F17.5","system":"icd10"},{"code":"F16.1","system":"icd10"},{"code":"F19.6","system":"icd10"},{"code":"F17.8","system":"icd10"},{"code":"F15.3","system":"icd10"},{"code":"F13.1","system":"icd10"},{"code":"F17.3","system":"icd10"},{"code":"F16.9","system":"icd10"},{"code":"F30.1","system":"icd10"},{"code":"F17.9","system":"icd10"},{"code":"F17.6","system":"icd10"},{"code":"F16.2","system":"icd10"},{"code":"F19.9","system":"icd10"},{"code":"F15.9","system":"icd10"},{"code":"F63.3","system":"icd10"},{"code":"F18.5","system":"icd10"},{"code":"F19.4","system":"icd10"},{"code":"F13.5","system":"icd10"},{"code":"F13.9","system":"icd10"},{"code":"F16.8","system":"icd10"},{"code":"F30.0","system":"icd10"},{"code":"F16.3","system":"icd10"},{"code":"F12.8","system":"icd10"},{"code":"F15.5","system":"icd10"},{"code":"F19.0","system":"icd10"},{"code":"F13.2","system":"icd10"},{"code":"F15.1","system":"icd10"},{"code":"F17.0","system":"icd10"},{"code":"F16.5","system":"icd10"},{"code":"F13.6","system":"icd10"},{"code":"F13.3","system":"icd10"},{"code":"F10.8","system":"icd10"},{"code":"F19.5","system":"icd10"},{"code":"F15.8","system":"icd10"},{"code":"F18.0","system":"icd10"},{"code":"F15.0","system":"icd10"},{"code":"F63.2","system":"icd10"},{"code":"F11.8","system":"icd10"},{"code":"F16.6","system":"icd10"},{"code":"F18.3","system":"icd10"},{"code":"F16.0","system":"icd10"},{"code":"F18.6","system":"icd10"},{"code":"F19.1","system":"icd10"},{"code":"F18.9","system":"icd10"},{"code":"F15.2","system":"icd10"},{"code":"F19.3","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-mental-and-behavioural-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-mental-and-behavioural-disorders-natural-cause-mania---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-mental-and-behavioural-disorders-natural-cause-mania---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-mental-and-behavioural-disorders-natural-cause-mania---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
