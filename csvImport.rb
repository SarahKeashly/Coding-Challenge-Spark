
require 'csv'

# table_read = CSV.read("contacts.csv")
# table_parse = CSV.parse("contacts.csv")


# prints out parsed table
table = CSV.parse(File.read("contacts.csv"), headers: true)
# puts "parsed Table", table;


puts table[0]["first_name"]
# "Glenda"