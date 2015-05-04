class App < Sinatra::Base
  enable :sessions

  get './layout.slim' do
      "Hello World"
  end


  get 'lists' do
    User.all

  end


end
