class ArtistsController < ApplicationController
   
set :views, "app/views/artists"

    get '/artists' do 
        @artists = Artist.all 
        erb :index
    end 

    get '/artists/:id' do 
        @artist = Artist.find(params["id"])
        @songs = @artist.songs
        binding.pry
        erb :show
    end

    get '/artists/:slug' do 
       
    end

        
    
end
