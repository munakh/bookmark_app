require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    ENV
    @bookamrks = Bookmark.all
    erb(:bookmarks)
  end

  get '/bookmarks/new' do
    erb(:"bookmarks/new")
  end

  post '/bookmarks' do
    Bookmark.add(url: params['url'])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
