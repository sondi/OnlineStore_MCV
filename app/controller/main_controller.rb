class MainController
	def initialize(var)
		@view = MainView.new
		# @usuario = "Sandra"
		# @contra = "laquesea"
		if var[0] == "login"
			log_in(var[1],var[2])
		elsif var[0] == "signin"
			sign_in(var[1],var[2], "buyer")
		else
			puts "command not found"
		end
	end

	def log_in(username, password)
		first_user = User.find_by(name: username)
		username = first_user.name
		pw = first_user.password
		if password == pw
			@view.welcome
			if first_user.role == "seller"
				new_product = @view.seller_screen
				new_product
			else
				@view.buyer_screen
			end
		else
			@view.login_failed
		end
	end

	def sign_in(username, password, role)
		new_user = User.new(name: username, password: password, role: role)
		new_user.save
		@view.succesful_signin
	end

	def add_product
	
	end
end

