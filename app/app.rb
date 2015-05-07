class App < Sinatra::Base
  enable :sessions

  get '/' do
    slim :index
  end

  get '/login' do
    slim :login
  end

  post '/login' do
    user = User.first(uname: params['uname'])
    if user && user.pass == params['pass']
      session[:user] = user.id
      redirect '/welcome'
    else
      redirect '/login'
    end
  end

  get '/sign' do
    slim :sign
  end

  get '/welcome' do
    if session[:user]
      @user = User.get(session[:user])
      slim :welcome
    else
      redirect '/'
    end
  end


#  get '/lists' do
 #   User.all
#
 # end


end
