class GenresController < ApplicationController

    get '/genres' do
        @genres = Genre.all.sort

        erb :'genres/index'
    end
    
end