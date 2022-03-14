
require 'csv'

# table_read = CSV.read("contacts.csv")
# table_parse = CSV.parse("contacts.csv")


# 1. Import the contacts CSV (included). 
# to create a database.
# prints out parsed table
table = CSV.parse(File.read("contacts.csv"), headers: true)
# puts "parsed Table", table;


#2. List only the valid contact records (not duplicate or incomplete), with each contact appearing only once along with the answers they have most recently added (if they have any answers at all).

# puts table[0]["first_name"]
# "Glenda"

# puts table[1]
# lists eveything for Jennifyr

# Need to loop through the rows