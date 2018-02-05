class ItemController < ApplicationController

	get '/' do
		"default route in ItemController"
	end

	get '/add' do
		erb :add_item
	end

end