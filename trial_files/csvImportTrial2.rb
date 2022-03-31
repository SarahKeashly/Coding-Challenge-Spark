require 'csv'
require 'pry'

# file = CSV.parse(File.read("contacts.csv"))

#returns whole file
# parsed_whole_file = CSV.parse(File.read(file), headers: true)


#only returns first line with headers included
# parsed_file = CSV.parse_line(File.read(file), headers: true)

#writing to a separate file (include path where path stated)
# parsed_file_write = CSV.parse_line(File.write(path, file), headers: true)

# CSV.parse(File.read("contacts.csv")) do |files|  
# CSV.foreach(File.read("contacts.csv"), headers: true) do |row|
#   if row.include?(nil)
#     p "area blank"
#   else
#     p row
#   end
# end


# def parse_file
#   data = File.read("spec/fixtures/roster.csv")
#   domains = []

  # CSV.foreach("contacts.csv", headers: false) do |row|
  #   p row.col[0]
    # #get the email domains and pass them into array
    # email = row[1].split('@')[1]
    # domains << email
    # domains
  # end
#   count_domains(domains)
# end


# puts parsed_file_write


# CSV.parse(File.read("contacts.csv")).each do |row|
#   p row
#   # attributes = {}
#   # row.each_pair do |column, value|
#   #   attributes[column]||=[]
#   #   attributes[column] << value
#   # end

#   # data << attributes
# end

# data.map { |d| d.transform_values { |val| val.size ==1 ? val.first : val} }
rows = []
not_unique = []
CSV.read('contacts.csv').uniq.each do |row|
  # binding.pry
  # p row[2].instance_of? String
  unique_check = row[2]
  # p unique_check
  if row.include?(nil) == false
     rows << row
  
    # p unique_check
    # get the email row(row[2]), check that it's unique, if it is put row into rows
unique = []
unique << row[2]   

    # if row[2].uniq.length == row[2].length
    #   puts "a does contain duplicates"
    # else
    #   puts "a does not contain duplicates"
    # end

    # if unique_check == true
    #  p "hello"
    # # rows << row
    # # else
    # # #   # binding.pry
    # # # not_unique << row
    # end
  end
  # p rows
# rows << row

# rows
# not_unique
end
# p rows
# p not_unique

