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

  post '/sign' do
    if params['pass'].length <= 3
      redirect '/sign'
    end
    sign = User.create(uname: params['uname'], pass: params['pass'])
    if sign && sign.valid?
      session[:user] = sign.id
      redirect '/welcome'
    else
      redirect '/sign'
    end
  end

  get '/welcome' do
    if session[:user]
      @user = User.get(session[:user])
      slim :welcome
    else
      redirect '/'
    end
  end



end
