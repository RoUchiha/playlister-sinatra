class ArtistsController < ApplicationController

    get '/artists' do
        @artists = Artist.all.sort

        erb :'artists/index'
    end


end
