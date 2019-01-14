require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do
     
      erb :new
    end

    post '/pirates' do 
      @pirates = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
       Ships.new(details)
      end
      @ships = Ships.all 
      erb :show
    end


  end
end
