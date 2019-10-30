require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    use Rack::MethodOverride
  end

  get "/" do
    erb :welcome
  end

  get '/sharks' do
    @sharks = Shark.all
    erb :index
  end

  get '/sharks/new' do
    @oceans = Ocean.order(:name)
    erb :new
  end

  get "/sharks/:id" do
    @shark =find_shark
    erb :show
  end

  post "/sharks" do
    @shark = Shark.create params[:shark]
    redirect "/sharks/#{@shark.id}"
  end

  delete "/sharks/:id" do
   find_shark.delete
    redirect "/sharks"
  end

  get "/sharks/:id/edit" do
    @oceans = Ocean.order(:name)
    @shark = find_shark
    erb :edit
  end

  put "/sharks/:id" do
    @shark = find_shark
    @shark.update params[:shark]
    redirect "/sharks/#{@shark.id}"
  end

  def find_shark
     Shark.find(params[:id])
  end
end
