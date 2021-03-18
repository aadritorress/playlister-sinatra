class GenresController < ApplicationController

    set :views, "app/views/genres"

    get '/genres' do 
        @genres = Genre.all 
    erb :index
    end 

    get '/genres/:id' do 
        @genre = Genre.find(params["id"])
        #binding.pry
        @songs = @genre.songs
        erb :show
    end

end