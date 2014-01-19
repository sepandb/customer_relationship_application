require_relative 'contact'
require_relative 'rolodex'
require_relative 'cra'

new_cra = CRA.new
new_cra.main_menu



##TESTING CODE/ HISTORY ETC. BELOW##



# require_relative 'contact'
# require_relative 'rolodex'

# rolodex = Rolodex.new

# sepand = {
# 	:firstname => "sep",
# 	:lastname => "Bar",
# 	:email => "sep@skyprep.com",
# 	#:company => "skyprep"
# }

# arash = {
# 	:firstname => "arash",
# 	:lastname => "barkhodaee",
# 	:email => "ara@skyprep.com",
# 	:company => "skyprep"
# }

# sepand = Contact.new(sepand)
# arash = Contact.new (arash)

# babak = Contact.new({:firstname => "Babak", :lastname => "Baraka"})
# rolodex.add_contact(sepand)
# rolodex.add_contact(arash)
# rolodex.add_contact(babak)

# rolodex.display_all_contacts

# rolodex.add_contact({:firstname => "mahmoud", :lastname => "barkodz"})

# puts ""

# rolodex.display_all_contacts


# babak = Contact.new("babak", "cattaka", "babk@skyprep.com", "zuuts")
# sepand = Contact.new("sepand", "barkhodaee", "sepand@gmail.com", "skyprep")
# arash = Contact.new("arash", "barkhodaee", "sepand@gmail.com", "skyprep")
# rolodex = Rolodex.new
# rolodex.add(babak)
# rolodex.add(sepand)
# rolodex.add(arash)

# puts "#{rolodex.display_all_contacts}"
# puts "SPACE"
# puts "SPACE"
# # puts "#{rolodex.modify_contact(2)}"
# # puts "#{rolodex.display_all_contacts}"
# # puts "SPACE!"
# # puts "#{rolodex.delete_contact(arash)}"

# # puts "#{rolodex.display_particular_contact(1)}"

# new_attributes = {
# 	:firstname => "Harashio",
# 	:lastname => "Baraakkadoro",
# 	:email => "maurizio@gmail.com",
# 	:company => "Apple"
# }

# rolodex.modify_contact(2, new_attributes)

# puts "#{rolodex.display_all_contacts}"

# puts ""
# puts ""

# firstname = "firstname"
# lastname = "lastname"
# email = "email"
# company = "company"

# puts rolodex.display_info_by_attribute(email)


