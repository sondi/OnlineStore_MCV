class MainController
	def initialize(var)
		@view = MainView.new
		# @usuario = "Sandra"
		# @contra = "laquesea"
		
		log_in("Sandra", "nose")
	end

	def log_in(usuario, contra)
		first_user = User.find(1)
		username = first_user.name
		pw = first_user.password

		if contra == pw
			puts "Welcome!"
		else
			puts "Username or Password not valid, try again"
		end
	end

	def sign_in

	end
end

