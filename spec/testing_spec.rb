require './csvImport2'
require 'pry'


RSpec.describe 'csvImport2' do 
  it "generates a list of contact names" do 
   contacts
# binding.pry
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


        
   
end