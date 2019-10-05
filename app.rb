require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new' 
    end

    post '/pirates' do

      pirate_hash={
        name: params[:pirate][:name],
        height: params[:pirate][:height],
        weight: params[:pirate][:weight]
      }
      @pirate = Pirate.new(pirate_hash)
      
      params[:pirate][:ships].each do |s|
        ship_hash = {
          name: s[:name],
          type: s[:type],
          booty: s[:booty]
        }
        Ship.new(ship_hash)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
