class Contact
	attr_accessor :id, :firstname, :lastname, :email, :company


	def initialize(firstname, lastname, email, company)
		@firstname = firstname
		@lastname = lastname
		@email = email
		@company = company

	end

	def show
		puts "first name: #{@firstname}"
		puts "last name: #{@lastname}"
		puts "email: #{@email}"
		puts "company: #{@company}"

	end
end