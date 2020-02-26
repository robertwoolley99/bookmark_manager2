require 'sinatra/base'
require './lib/bookmark
require 'rubygems'
require 'data_mapper'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
#    p ENV
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    url
    Bookmark.create(title: params[:title], url: params['new_bookmark'])
    redirect('/bookmarks')
  end

 get '/bookmarks/delete' do
   @bookmarks = Bookmark.all
   erb:'bookmarks/delete'
 end


run! if app_file == $0

end
