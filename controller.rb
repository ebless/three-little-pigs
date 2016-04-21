require 'sinatra'

get '/' do
	@question = "You are a pig who is building your first house. What are you going to build it out of?"
	@action = "/first_choice"
	
	@choice_1 = "straw"
	@choice_2 = "wood"
	@choice_3 = "brick"
	
	erb :index
end

post '/first_choice' do

	case params[:choice]
	when "straw"
		@question = "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?"
		@action = "/straw"

		@choice_1 = "stay in your house"
		@choice_2 = "run away"

		erb :two_choices
	when "wood"
		@question = "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?"
		@action = "/wood"

		@choice_1 = "stay in your house"
		@choice_2 = "run away"

		erb :two_choices
	when "brick"
		@question = "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?"
		@action = "/brick"

		@choice_1 = "stay in your house"
		@choice_2 = "run away"
	end
		
end