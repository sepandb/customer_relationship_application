require_relative 'contact'
require_relative 'rolodex'

class CRA

	def initialize
		@rolodex = Rolodex.new
	end

	def main_menu
		run = true
		while run
			puts ""
			puts "Enter the number corresponding to what would you like to do"
			puts "1 Add Contact"
			puts "2 Modify Contact"
			puts "3 Display All Contacts"
			puts "4 Display a Particular Contact"
			puts "5 Display Attribute"
			puts "6 Delete Contact"
			puts "7 Export to CSV"
			puts "8 Import from CSV"
			puts "9 Exit"
			puts ""
			main_menu_input = gets.chomp.to_i
			case main_menu_input
			when 1
				add
			when 2
				modify
			when 3
				display_all_contacts
			when 4
				display_particular_contact
			when 5
				display_attribute
			when 6
				delete
			when 7
				export
			when 8
				import
			when 9
				run = false
			end
		end
	end


	def add
	puts "Enter Contact first name"
	contact_firstname = gets.chomp
	puts "Enter Contact last name"
	contact_lastname = gets.chomp
	puts "Enter Contact email"
	contact_email = gets.chomp
	puts "Enter Contact company"
	contact_company = gets.chomp

	contact_hash = {
		:firstname => contact_firstname,
		:lastname => contact_lastname,
		:email => contact_email,
		:company => contact_company
	}

	new_contact = Contact.new(contact_hash)
	@rolodex.add_contact(new_contact)
	puts "Contact Added!"
	end

	def modify

		@rolodex.display_all_contacts
		puts "Select a contact by their id number to modify"

		id = gets.chomp.to_i

		puts "Enter the number corresponding to the attribute you want to modify"
		puts "1 first name"
		puts "2 last name"
		puts "3 email"
		puts "4 company"

		attribute = gets.chomp.to_i
		case attribute
		when 1
			puts "enter a new first name"
			first_name = gets.chomp

			@rolodex.modify_contact(id, {:firstname => first_name})
		when 2
			puts "enter a new last name"
			last_name = gets.chomp

			@rolodex.modify_contact(id, {:lastname => last_name})
		when 3
			puts "enter a new email"
			email = gets.chomp

			@rolodex.modify_contact(id, {:email => email})
		when 4
			puts "enter a new company"
			company = gets.chomp

			@rolodex.modify_contact(id, {:company => company})

		end
		puts "Added!"
	end

	def display_all_contacts
		@rolodex.display_all_contacts
	end

	def display_particular_contact
		puts "Enter the id of the contact you want to view"
		id = gets.chomp.to_i

		particular_contact = @rolodex.find_contact_by_id(id)
		if  particular_contact == nil
			puts "There is no contact by that id"
		else
		 	particular_contact.show
		end
	end

	def display_attribute
		puts "Enter the number corresponding to the attribute you want to view"
		puts "1 first name"
		puts "2 last name"
		puts "3 email"
		puts "4 company"
		attribute = gets.chomp.to_i
		case attribute
		when 1
			puts @rolodex.get_info_by_attribute("firstname")
		when 2
			puts @rolodex.get_info_by_attribute("lastname")
		when 3
			puts @rolodex.get_info_by_attribute("email")
		when 4
			puts @rolodex.get_info_by_attribute("company")
		end
	end

	def delete
		puts "Enter the id of the contacts you want to delete"
		id = gets.chomp.to_i
		@rolodex.delete_contact_by_id(id)
		puts "Contact deleted"
	end

	def export
		@rolodex.export_to_csv
		puts "Your contacts have been exported to a CSV file!"
	end

	def import
		@rolodex.import_from_csv
		puts "Your contacts have been imported from the CSV"
	end


	# def delete_multiple
	# 	puts "Enter the IDs of the contacts you want to delete, separated by a comma"
	# 	ids = gets.chomp.split(',')
	# 	ids.each do |id|
	# 		@rolodex.delete_contact_by_id(id.to_i)
	# 	end
	# end

end
