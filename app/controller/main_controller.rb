class MainController
	def initialize(var)
		@view = MainView.new
		# @usuario = "Sandra"
		# @contra = "laquesea"
			if var[0] == "login"
			log_in("Sandra", "nose")
		elsif var[0] == "signin"
			p var
			sign_in(var[1],var[2])
		else
			puts "command not found"
		end
	end

	def log_in(username, password)
		first_user = User.find(1)
		username = first_user.name
		pw = first_user.password
		if password == pw
			puts "Welcome!"
		else
			puts "Username or Password not valid, try again"
		end
	end

	def sign_in(username, password)
		new_user = User.new(name: username, password: password)
		new_user.save
	end
end

