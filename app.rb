require 'sinatra'
require 'holidapi'
require 'cat_api'

class MyWebApp < Sinatra::Base
	get '/' do
		@birthdays = HolidApi.get(country: 'US', year: 1992, month: 5)
		@current = HolidApi.get(country: 'US', year: Time.now.year, month: Time.now.month)
		erb :cats
	end
end