require_relative 'contact'
require 'csv'
class Rolodex
	attr_accessor :contacts
	def initialize
		@id = 1
		@contacts = Array.new
	end

	def add_contact(c)

		 	c = Contact.new(c) if c.class == Hash
		 	c.id = @id
		 	@contacts.push(c)
		 	@id += 1


		# if c.class == Contact
		# 	c.id = @id
		# 	@contacts.push(c)
		# 	@id = @id + 1
		# else
		# 	new_contact = Contact.new(c)
		# 	new_contact.id = @id
		# 	@contacts.push(new_contact)
		# 	@id = @id + 1

		# end

	end

	def modify_contact(id, new_attributes_hash)
		@contacts.each do |contact|
			 if contact.id == id

			 	if new_attributes_hash.has_key?(:firstname)
			 		new_firstname = new_attributes_hash[:firstname]
			 		contact.firstname = new_firstname
			 	end

			 	 if new_attributes_hash.has_key?(:lastname)
			 		new_lastname = new_attributes_hash[:lastname]
			 		contact.lastname = new_lastname
				end

			 	if new_attributes_hash.has_key?(:email)
			 		new_email = new_attributes_hash[:email]
			 		contact.email = new_email
			 	end

			 	 if new_attributes_hash.has_key?(:company)
			 		new_company = new_attributes_hash[:company]
			 		contact.company = new_company
				end
			end
		end
	end

	def display_all_contacts
		@contacts.each do |contact|
			puts "id: #{contact.id}"
			contact.show
		end
	end

	def find_contact_by_id(id)
		@contacts.each do |contact|
			return contact if contact.id == id
		end
		return nil
	end

	def get_info_by_attribute(attribute)

		attribute_array = []

		@contacts.each do |contact|
			if attribute == "firstname"
				 attribute_array.push(contact.firstname)
			end
			if attribute == "lastname"
				 attribute_array.push(contact.lastname)
			end
			if attribute == "email"
				 attribute_array.push(contact.email)
			end
			if attribute == "company"
				 attribute_array.push(contact.company)
			end
		end
		return attribute_array
	end

	def delete_contact(contact)
		@contacts.delete(contact)
	end

	def delete_contact_by_id(id)
		contact_to_delete = find_contact_by_id(id)
		delete_contact(contact_to_delete)
	end

	def export_to_csv
		CSV.open("./export.csv", 'wb') do |csv|
		#csv << ["id", "first name", "last name", "email", "company"]
		@contacts.each do |contact|
			csv << [contact.id, contact.firstname, contact.lastname, contact.email, contact.company]
			end
		end
	end

	def import_from_csv
		CSV.foreach("./export.csv") do |row|
			new_contact =
			{:firstname => row[1],
				:lastname => row[2],
				:email => row[3],
				:company => row[4]
			}
			add_contact(new_contact)
		end
	end

end