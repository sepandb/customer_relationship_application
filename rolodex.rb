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

	def modify_contact(c)
		c.show
	end

	def display_all_contacts
		@contacts
	end

	def display_particular_contact(c)
		c.show
	end

	def display_info_by_attribute
	end

	def delete_contact(c)
		@contacts.delete(c)
	end

end