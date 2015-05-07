class App < Sinatra::Base
  enable :sessions

  get '/' do
    slim :index
  end

  get '/login' do

  end


#  get '/lists' do
 #   User.all
#
 # end


end
