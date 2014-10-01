get '/' do
  if session[:user_id] == nil
    erb :index
  else
    @user = current_user_info
    @exercises = Exercise.all
    erb :profile
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

post '/users' do
  @user = User.find_by(email: params[:email])
  redirect '/' unless @user

  if @user.password == params[:password]
    session[:user_id] = @user.id
  end

  redirect '/'
end

post '/users/new' do
  @user = User.new
  @user.name = params[:name]
  @user.password = params[:password]
  @user.email = params[:email]
  @user.save
  @user.reload

  session[:user_id] = @user.id
  redirect '/'
end

get '/exercise' do
  content_type :json
  Exercise.all.sample.to_json
end



