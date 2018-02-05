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
		pp params
		
		# this is how you add something with ActiveRecord.  so chill.
		@item = Item.new
		@item.title = params[:title]
		@item.user_id = 9 # for now
		@item.save

		# hey there's a .to_json method. cool.
		@item.to_json
	end
end