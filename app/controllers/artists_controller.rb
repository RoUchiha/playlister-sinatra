require 'rack-flash'

class ArtistsController < ApplicationController

    use Rack::Flash

    get '/artists' do
        @artists = Artist.all.sort

        erb :'artists/index'
    end


end
