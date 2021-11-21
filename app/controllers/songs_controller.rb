class SongsController < ApplicationController

    get '/songs' do 
        @songs = Song.all.sort

        erb :'/songs/index'
    end

end