class ItemController < ApplicationController

	get '/' do
		"default route in ItemController"
	end

	get '/add' do
		@page = "Add Item"
		@action = "/items/add"
		@method = "POST"
		@placeholder = "Enter your item!"
		@value=""
		@buttontext = "Add Item"
		erb :add_item
	end

	post '/add' do
		p params
		"you posted. check your terminal."
	end
end