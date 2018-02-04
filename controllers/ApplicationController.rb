class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

	get '/' do
		"hey cool the server runs"
	end

	not_found do
		halt 404
	end

end