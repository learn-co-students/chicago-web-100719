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
    erb :new
  end

  get "/sharks/:id" do
    @shark =find_shark
    erb :show
  end

  post "/sharks" do
    @shark = Shark.create params
    redirect "/sharks/#{@shark.id}"
  end

  delete "/sharks/:id" do
   find_shark.delete
    redirect "/sharks"
  end

  get "/sharks/:id/edit" do
    @shark = find_shark
    erb :edit
  end

  put "/sharks/:id" do
    @shark = find_shark
    p params
    @shark.update(name: params[:name], species: params[:species],
      region: params[:region], length: params[:length])
    redirect "/sharks/#{@shark.id}"
  end

  def find_shark
     Shark.find(params[:id])
  end
end
