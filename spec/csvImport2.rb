require 'csv'
require 'pry'

  email_list_found = {}
  duplicate_emails = [];
  final_contact_list=[];
  incomplete_contacts=[];

  def contacts
  CSV.read('contacts.csv').each do |row|
  # row
    
  end
  end
  contacts

  def check_nil(contacts)
    # if it doesn't include nil then it doesn't matter
    # grabbing the range row[0..0]
    nil_row_check=row[0..9] # returns [1, 2, 3, 4]
    # binding.pry
    # if rows 1-10 include nil, add it to incomplete contacts
    if nil_row_check.include?(nil)
    incomplete_contacts << nil_row_check
    end
    
    # next if is a guard clause so it will skip if the row includes nil
    # next if nil_row_check.include?(nil)
  end
    
      # binding.pry
      # h.fetch("z", "go fish")

  def duplicate(contacts)   
    email_list_found = {} 
      #if row[2] doesn't exist (aka glenda@gmail.com) return false
    email_found = email_list_found.fetch(row[2],false)
    if email_found # will go to the next item if email is found 
      duplicate_emails << row[2]
    else 
      email_list_found[row[2]] = true
      final_contact_list << row # qualified row will be inserted in the new rows
    end
  end

  # binding.pry



# # # Report   
# #   # total contacts
    # p "The total amount of contacts in this list is #{final_contact_list.length}"

# #   # duplicate contacts
# #     p "The total amount of duplicated contacts in this list is #{duplicate_emails.length}"

# #   #  incomplete contacts (rows for which there is no value for one or more headers, excluding Q&A columns)
# #     p "The total amount of incomplete contacts where there is no value for one or more headers (excluding Q&A columns) is #{incomplete_contacts.length}"





# def contacts
   
#    CSV.read('contacts.csv').each do |row|
#     incomplete_contacts=[];
           
#       def check_nil
        
#          nil_row_check=row[0..9]

#          if nil_row_check.include?(nil)
#          incomplete_contacts << nil_row_check
#          end

#       end
 
#       binding.pry
#   end

# end