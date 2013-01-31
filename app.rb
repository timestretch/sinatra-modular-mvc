require 'sinatra'

class App < Sinatra::Base
	
	def title
		"Home Page"
	end

	get '/' do
		erb :"home"
	end
	
	not_found do
		"Sorry, the page you requested was not found."
	end
	
end