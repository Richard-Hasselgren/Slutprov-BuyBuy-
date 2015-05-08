class App < Sinatra::Base
  enable :sessions

  get '/' do
    slim :index
  end

  get '/login' do
    slim :login
  end

  post '/login' do
    user = User.first(uname: params['uname'].downcase)
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
    sign = User.create(uname: params['uname'].downcase, pass: params['pass'])
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
      @lists = @user.lists
      slim :welcome
    else
      redirect '/'
    end
  end

  get '/list_item' do
    if session[:user]
      @user = User.get(session[:user])
    else
      redirect '/'
    end
    slim :list_item
  end

  #post


end
