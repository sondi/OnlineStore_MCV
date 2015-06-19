class MainView
	def initialize
		
	end

	def welcome
		puts "Welcome!"
	end

	def login_failed
		puts "Username or Password not valid, try again"
	end

	def succesful_signin
		puts "Your user was created"
	end

	def seller_screen
		np = []
		puts "Add product name"
		new_product = $stdin.gets.chomp
		puts "Add price"
		new_product_price = $stdin.gets.chomp
		puts "Add dquantity"
		new_product_quantity = $stdin.gets.chomp
		np << new_product << new_product_price << new_product_quantity
		np
	end

	def buyer_screen
		puts "products"
	end
end

