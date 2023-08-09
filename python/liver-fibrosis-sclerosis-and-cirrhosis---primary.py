# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"C350012","system":"readv2"},{"code":"C370800","system":"readv2"},{"code":"J612.11","system":"readv2"},{"code":"J612.12","system":"readv2"},{"code":"J615300","system":"readv2"},{"code":"J615711","system":"readv2"},{"code":"J615812","system":"readv2"},{"code":"J615H00","system":"readv2"},{"code":"J615z11","system":"readv2"},{"code":"J615z12","system":"readv2"},{"code":"J615z13","system":"readv2"},{"code":"J635600","system":"readv2"},{"code":"100253.0","system":"med"},{"code":"100474.0","system":"med"},{"code":"100592.0","system":"med"},{"code":"102922.0","system":"med"},{"code":"108819.0","system":"med"},{"code":"109540.0","system":"med"},{"code":"15424.0","system":"med"},{"code":"1638.0","system":"med"},{"code":"16455.0","system":"med"},{"code":"16725.0","system":"med"},{"code":"17330.0","system":"med"},{"code":"18739.0","system":"med"},{"code":"19512.0","system":"med"},{"code":"21713.0","system":"med"},{"code":"22841.0","system":"med"},{"code":"25383.0","system":"med"},{"code":"26319.0","system":"med"},{"code":"27438.0","system":"med"},{"code":"3450.0","system":"med"},{"code":"40567.0","system":"med"},{"code":"40963.0","system":"med"},{"code":"44120.0","system":"med"},{"code":"44676.0","system":"med"},{"code":"47257.0","system":"med"},{"code":"4743.0","system":"med"},{"code":"48928.0","system":"med"},{"code":"55454.0","system":"med"},{"code":"58184.0","system":"med"},{"code":"58630.0","system":"med"},{"code":"60104.0","system":"med"},{"code":"6015.0","system":"med"},{"code":"68376.0","system":"med"},{"code":"6863.0","system":"med"},{"code":"69204.0","system":"med"},{"code":"71453.0","system":"med"},{"code":"73482.0","system":"med"},{"code":"7602.0","system":"med"},{"code":"7885.0","system":"med"},{"code":"7943.0","system":"med"},{"code":"8206.0","system":"med"},{"code":"8363.0","system":"med"},{"code":"91591.0","system":"med"},{"code":"92909.0","system":"med"},{"code":"9494.0","system":"med"},{"code":"96664.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('liver-fibrosis-sclerosis-and-cirrhosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["liver-fibrosis-sclerosis-and-cirrhosis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["liver-fibrosis-sclerosis-and-cirrhosis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["liver-fibrosis-sclerosis-and-cirrhosis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
