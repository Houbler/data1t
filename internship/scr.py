import csv

with open(".\\raw\\rabota1000.csv", 'r', encoding="utf-8-sig") as infile:
    reader = csv.reader(infile, delimiter=";")
    data = list(reader)

header = data[0]  
header.append("work_location")
header.append("vac_time")  

for row in data[1:]:
    row.append("None")
    row.append("None")

for row in data:
    row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11] = row[0], row[2], row[1], row[4], row[10], row[6], row[5], row[8], row[3], row[9], row[7], row[11]



with open('.\\raw\\rabota1000_updated.csv', 'w', newline='', encoding="utf-8-sig") as outfile:
    writer = csv.writer(outfile, delimiter=";")
    writer.writerows(data)
