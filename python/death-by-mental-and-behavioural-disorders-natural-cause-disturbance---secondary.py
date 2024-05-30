# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"F12.9","system":"icd10"},{"code":"F10.2","system":"icd10"},{"code":"F06.8","system":"icd10"},{"code":"F14.8","system":"icd10"},{"code":"F12.2","system":"icd10"},{"code":"F10.1","system":"icd10"},{"code":"F07.1","system":"icd10"},{"code":"F10.6","system":"icd10"},{"code":"F11.3","system":"icd10"},{"code":"F07","system":"icd10"},{"code":"F12.5","system":"icd10"},{"code":"F11.1","system":"icd10"},{"code":"F06.7","system":"icd10"},{"code":"F06.9","system":"icd10"},{"code":"F11.9","system":"icd10"},{"code":"F10.3","system":"icd10"},{"code":"F11.0","system":"icd10"},{"code":"F12.6","system":"icd10"},{"code":"F14.5","system":"icd10"},{"code":"F07.2","system":"icd10"},{"code":"F10.5","system":"icd10"},{"code":"F62.9","system":"icd10"},{"code":"F12.1","system":"icd10"},{"code":"F14.6","system":"icd10"},{"code":"F90.0","system":"icd10"},{"code":"F62.1","system":"icd10"},{"code":"F14.1","system":"icd10"},{"code":"F62.0","system":"icd10"},{"code":"F10.0","system":"icd10"},{"code":"F11.5","system":"icd10"},{"code":"F14.9","system":"icd10"},{"code":"F14.3","system":"icd10"},{"code":"F62","system":"icd10"},{"code":"F62.8","system":"icd10"},{"code":"F14.0","system":"icd10"},{"code":"F06","system":"icd10"},{"code":"F12.0","system":"icd10"},{"code":"F14.2","system":"icd10"},{"code":"F11.6","system":"icd10"},{"code":"F11.2","system":"icd10"},{"code":"F12.3","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-mental-and-behavioural-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-mental-and-behavioural-disorders-natural-cause-disturbance---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-mental-and-behavioural-disorders-natural-cause-disturbance---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-mental-and-behavioural-disorders-natural-cause-disturbance---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
