get '/' do
  p session[:user_id]
  if session[:user_id] == nil
    erb :index
  else
    redirect '/home_page'
  end
end

get '/sign_in_form' do 
  erb :sign_in
end

post '/user_auth' do
  validate_user
  redirect '/home_page'
end

get '/sign_up_form' do 
  erb :sign_up
end 

post '/create_user' do
  create_new_user
  p params
end

get '/home_page' do
  @user_id = session[:user_id]
  erb :home_page
end

get '/user_profile/:user_id' do
  erb :user_profile
  find_photos
end

