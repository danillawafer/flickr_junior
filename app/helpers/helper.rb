def validate_user
	@user = User.where(username: params[:username], password: params[:password]).first
	if @user
		session[:user_id] = @user.id
		p session[:user_id]
		session[:invalid_login] = false
 	else
 		session[:invalid_login] = true
 		redirect '/sign_in_form'
 	end
end

def create_new_user
	@user = User.create(username: params[:username], email: params[:email], password: params[:password])
	if @user
		redirect '/sign_in_form'
	else
		redirect '/sign_up_form'
	end
end

def find_photos
	@user_id = params[:user_id]
	@photos = Photo.where(user_id: @user_id)
end