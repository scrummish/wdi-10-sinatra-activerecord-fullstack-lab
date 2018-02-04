class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

	set :views, File.expand_path('../views', File.dirname(__FILE__))

	get '/' do
		erb :todolist
	end

	not_found do
		halt 404
	end

end