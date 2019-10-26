require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do 
      #@info = params
      @pirateName = params["pirate"]["name"]
      @pirateWeight = params["pirate"]["weight"]
      @pirateHeight = params["pirate"]["height"]
      @shipOneName = params["pirate"]["ships"][0]["name"]
      @shipOneType = params["pirate"]["ships"][0]["type"]
      @shipOneBooty = params["pirate"]["ships"][0]["booty"]
      @shipTwoName = params["pirate"]["ships"][1]["name"]
      @shipTwoType = params["pirate"]["ships"][1]["type"]
      @shipTwoBooty = params["pirate"]["ships"][1]["booty"]
      #binding.pry
      erb :'pirates/show' 
    end

  end
end
