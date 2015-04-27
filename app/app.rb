class App < Sinatra::Base
  enable :sessions

  get 'lists' do
    User.all

  end


end
