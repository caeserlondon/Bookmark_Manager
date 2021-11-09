# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end
  get '/hello' do
    'hello'
  end

  run! if app_file == $PROGRAM_NAME
end
