require 'digest/md5'

get '/' do

  if session[:user_id] == nil
    erb :index
  else
    redirect '/user'
  end

end

get '/user' do
  @user = current_user_info
  @exercises = Exercise.all
  email_address = @user.email.downcase
  @hash = Digest::MD5.hexdigest(email_address)
  erb :profile
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

post '/users' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
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



