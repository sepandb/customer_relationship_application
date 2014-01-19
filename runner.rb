require_relative 'contact'
require_relative 'rolodex'

sepand = Contact.new("sepand", "barkhodaee", "sepand@gmail.com", "skyprep")
arash = Contact.new("arash", "barkhodaee", "sepand@gmail.com", "skyprep")
rolodex = Rolodex.new
rolodex.add(sepand)
rolodex.add(arash)

puts "#{rolodex.display_all_contacts}"
puts "SPACE"
puts "SPACE"
# puts "#{rolodex.modify_contact(2)}"
# puts "#{rolodex.display_all_contacts}"
# puts "SPACE!"
# puts "#{rolodex.delete_contact(arash)}"

# puts "#{rolodex.display_particular_contact(1)}"

new_attributes = {
	:firstname => "Harashio",
	:lastname => "Baraakkadoro",
	:email => "maurizio@gmail.com",
	:company => "Apple"
}

rolodex.modify_contact(2, new_attributes)

puts "#{rolodex.display_all_contacts}"
