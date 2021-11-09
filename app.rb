# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
	configure :development do
		register Sinatra::Reloader
	end

	get '/' do
		'Bookmark Manager'
	end

	get '/bookmarks' do
		@bookmarks = Bookmark.all
		erb :'index'
	end

	run! if app_file == $PROGRAM_NAME
end
