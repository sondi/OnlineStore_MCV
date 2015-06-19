class MainController
	def initialize(var)
		@view = MainView.new
		# @usuario = "Sandra"
		# @contra = "laquesea"
		if var[0] == "login"
			log_in(var[1],var[2])
		elsif var[0] == "signin"
			sign_in(var[1],var[2])
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
		else
			@view.login_failed
		end
	end

	def sign_in(username, password)
		new_user = User.new(name: username, password: password)
		new_user.save
		@view.succesful_signin
	end
end

