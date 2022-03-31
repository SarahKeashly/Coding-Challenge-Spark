require 'csv'
require 'pry'


  def list_without_nil_rows(row)
    incomplete_contacts = []
    final_contact_list=[];
    
    # grabbing the range row[0..0]
    nil_row_check=row[0..9] # returns [1, 2, 3, 4]
    # next if nil_row_check.include?(nil)
    if nil_row_check.include?(nil)
      incomplete_contacts << nil_row_check
    else 
      final_contact_list << nil_row_check
    end
  
    final_contact_list
    
  end




  def list_with_duplicate_emails(row, email_list_found, duplicate_emails, contact_list)   

      #if row[2] doesn't exist (aka glenda@gmail.com) return false
    email_found = email_list_found.fetch(row[2],false)
    
    if email_found # will go to the next item if email is found 
      
      duplicate_emails << row[2]
      
    else 
      
      email_list_found[row[2]] = true
      contact_list << row # qualified row will be inserted in the new rows
    end
    # p duplicate_emails
    contact_list
  end
 
  
  
  def contacts  
    duplicate_emails = []
    email_list_found = {} 
    contact_list=[]
    incomplete_contacts = []
     
      CSV.read('contacts.csv').each do |row|

        list_without_nil_rows(row)
        list_with_duplicate_emails(row, email_list_found, duplicate_emails, contact_list)
        # next if must be in a loop (this is not tested yet)
        # next if nil_row_check.include?(nil)
      
      end

    # # Report   
        p "The total amount of contacts in this list is #{contact_list.length}"

    # # duplicate contacts
        p "The total amount of duplicated contacts in this list is #{duplicate_emails.length}"

    # #  incomplete contacts (rows for which there is no value for one or more headers, excluding Q&A columns)
        # p "The total amount of incomplete contacts where there is no value for one or more headers (excluding Q&A columns) is #{incomplete_contacts.length}"
      
    end
    contacts
     





