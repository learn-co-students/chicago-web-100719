require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/sharks' do
    @sharks = Shark.all
    erb :index
  end

  get "/sharks/:id" do
    @shark = Shark.find(params[:id])
    erb :show
  end
end
