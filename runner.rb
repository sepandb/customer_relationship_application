require_relative 'contact'
require_relative 'rolodex'

sepand = Contact.new("sepand", "barkhodaee", "sepand@gmail.com", "skyprep")
arash = Contact.new("arash", "barkhodaee", "sepand@gmail.com", "skyprep")
rolodex = Rolodex.new
rolodex.add(sepand)
rolodex.add(arash)

puts "#{rolodex.display_all_contacts}"
puts "SPACE!"
puts "#{rolodex.delete_contact(arash)}"