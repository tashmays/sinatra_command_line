require 'sinatra'
require 'pry'
require 'babbler'

get '/' do
	#Main index
	erb :index
end

get '/commandline' do
	#Command Line Menu
	erb :commandline
end

get '/search' do
	# Search menu for man pages
	@manpages = params[:manpages]
	erb :search
end

get '/manpages_erb/:manpages' do
	# man pages
	@manpages = params[:manpages]
	erb :manpages_erb
end

post "/search_manpages" do
	@manpages = params[:manpages]
	erb :manpages_erb
end
