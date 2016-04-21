require 'sinatra'

get '/' do
	@question = "You are a pig who is building your first house. What are you going to build it out of?"
	
	@choice_1 = "straw"
	@choice_2 = "wood"
	@choice_3 = "brick"
	
	erb :index
end

post '/first_choice' do

end