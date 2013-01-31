require 'sinatra'
require './models/prospect'

class ProspectController < App
	attr_reader :title

	get '/' do
		render_form
	end
	
	post '/' do
		if prospect.valid?
			prospect.save
			redirect "/register/thanks"
		else
			render_form			
		end
	end

	get '/thanks' do
		erb :"prospect/thanks"
	end

	def render_form
		@title = "Register"
		erb :"prospect/form"
	end

	def prospect
		@prospect ||= Prospect.new(params)
	end
	
end