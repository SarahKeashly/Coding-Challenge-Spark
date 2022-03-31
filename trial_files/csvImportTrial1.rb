
require 'csv'


# 1. Import the contacts CSV (included). 
# to create a database.
# prints out parsed table


# table = CSV.parse(File.read("contacts.csv"), headers: true)
# puts "parsed Table", table;


#2. List only the valid contact records (not duplicate or incomplete), with each contact appearing only once along with the answers they have most recently added (if they have any answers at all).

# puts table[0]["first_name"]
# "Glenda"

# puts table[1]
# lists eveything for Jennifyr

# Need to loop through the rows
# there are 13 rows 0-12

# first_name = []
# last_name = []
# email = []
# phone = []
# address_line_1 = []
# city = []
# province = []
# country_name = []
# postcode = []
# date_added = []
# how_did_you_hear_about_us = []
# what_is_your_budget = []
# what_is_your_favourite_color = []

# # all contacts in an array
# all_contacts = []

# CSV.foreach(("contacts.csv"), headers: true, col_sep: ",") do 
#   |row|

#   all_contacts << row
#   first_name << row[0]
#   last_name << row [1]
#   email << row [2]
#   phone << row [3]
#   address_line_1 << row [4]
#   city << row [5]
#   province << row [6]
#   country_name << row [7]
#   postcode << row [8]
#   date_added << row [9]
#   how_did_you_hear_about_us << row [10]
#   what_is_your_budget << row [11]
#   what_is_your_favourite_color << row [12]

  
  
# end

# puts all_contacts


#Look for incomplete rows 







# if first name and last name are found more than once, use the newest date added one
# puts first_name + last_name

# loop through first name

#if first name i is greater than 1 
#sort 



# if nil is found (except Q&A), do not report that row

# report the total amount of contacts (.length of row)




  # puts "row 1",row[0], "row 6",row[5]
 
  # puts row['province'].length
  
  # if row[0] === nil || row[1] === nil || row[2] === nil || row[3] === nil || row[4] === nil || row[5] === nil || row[6] === nil || row[7] === nil || row[8] === nil || row[9] === nil || row[10] === nil || row[11] === nil || row[12] === nil 
  #   puts "error"
  # end

  # if row === nil
  #   puts "error"
  # end

  # if the row includes a string print hello world
  # if row['province'].include?("")
  #   puts "I'm good"

  # elsif row.include?(nil)
  #   puts "error"
  # end

# if row[0].include?("") || row[1].include?("") || row[2].include?("") || row[3].include?("") || row[4].include?("") || row[5].include?("") || row[6].include?("") || row[7].include?("") || row[8].include?("") || row[9].include?("") || row[10].include?("") || row[11].include?("") || row[12].include?("")
#   puts "im good"
#   end

  # if the row equals to nil, print error
  # if row[0] === nil || row[1] === nil || row[2] === nil || row[3] === nil || row[4] === nil || row[5] === nil || row[6] === nil || row[7] === nil || row[8] === nil || row[9] === nil || row[10] === nil || row[11] === nil || row[12] === nil 
  #   puts "What is your favourite colour?", row["what_is_your_favourite_color"]
  # end

# end



