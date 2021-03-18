class SongsController < ApplicationController

    set :views, "app/views/songs"

    get '/songs' do 
        @songs = Song.all 
    erb :index
    end 

    # get '/songs/:id' do 
    #     # binding.pry
    #     @song = Song.find(params['id'])
    #     @artist = @song.artist 
    #     @genre = @song.genres
    #     erb :show 
    # end 

    get '/song/new' do 
        @artists = Artist.all
        @genres = Genre.all
        erb :new
    end

    get '/songs/:slug' do
        @song = Song.find_by_slug(params[:slug])
        @artist = @song.artist 
        @genre = @song.genres
        # binding.pry
        # @song = Song.find {|song| song.slug == params [:slug] }
        erb :show 
    end

    post '/songs' do
        binding.pry
        # Song.create(name: params'name'])

    end


end