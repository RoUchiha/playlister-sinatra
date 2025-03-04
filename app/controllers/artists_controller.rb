require 'rack-flash'

class ArtistsController < ApplicationController

    use Rack::Flash

    get '/artists' do
        @artists = Artist.all.sort

        erb :'artists/index'
    end

    get '/artists/new' do
        
        erb :'artists/new'
    end

    get '/artists/:slug' do
        @artist = Artist.find_by_slug(params[:slug])

        erb :'artists/show'
    end

end
