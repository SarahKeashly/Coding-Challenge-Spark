require './csvImport2'
require 'pry'


RSpec.describe 'csvImport2' do 
  it "generates a list of contact names" do 
   contacts

      expect(contacts).to include( ["first_name",
      "last_name",
      "email",
      "phone",
      "address_line_1",
      "city",
      "province",
      "country_name",
      "postcode",
      "date_added",
      "how_did_you_hear_about_us",
      "what_is_your_budget",
      "what_is_your_favourite_color"])
     end

   it "checks if there is nil in rows 0-9" do
      contacts
      
      expect(contacts).not_to include(nil)   
   end

     
   it "checks if duplicate emails are in the duplicates variable" do
    contacts

    expect(contacts[2]).to include(['woodrowdbrown@mailinator.com'])
   end
   
end