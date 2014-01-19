class Contact
	attr_accessor :id, :firstname, :lastname, :email, :company


	def initialize(contact_hash)
		@firstname = contact_hash[:firstname]
		@lastname = contact_hash[:lastname]
		@email = contact_hash[:email]
		@company = contact_hash[:company]

	end

	def show
		puts "first name: #{@firstname}"
		puts "last name: #{@lastname}"
		puts "email: #{@email}"
		puts "company: #{@company}"

	end
end