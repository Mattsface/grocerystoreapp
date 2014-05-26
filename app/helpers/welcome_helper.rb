module WelcomeHelper

	def display_name
		if @user.name.nil?
			@user.email
		else
			@user.name
		end
	end
	
end
