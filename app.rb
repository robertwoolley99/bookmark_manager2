require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
#    p ENV
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  # post '/bookmarks/add' do
  #   p 'http://www.tfl.gov.uk'
  # end

run! if app_file == $0

end
