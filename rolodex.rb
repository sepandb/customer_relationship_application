require_relative 'contact'

class Rolodex
	attr_accessor :contacts
	def initialize
		@id = 1
		@contacts = Array.new
	end

	def add(c)
		c.id = @id
		@contacts.push(c)
		@id = @id + 1

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
		@contacts
	end

	def find_contact_by_id(id)
		@contacts.each do |contact|
			return contact if contact.id == id
		end
	end

	def display_info_by_attribute
	end

	def delete_contact(contact)
		@contacts.delete(contact)
	end

end