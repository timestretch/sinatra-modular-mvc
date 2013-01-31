require './app'
require './controllers/prospect_controller'

map "/register" do
	run ProspectController
end

map "/" do
	run App
end