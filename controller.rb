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

		erb :two_choices
	end

end

post '/straw' do

	case params[:choice]
	when "stay in your house"
		@question = "The wolf did not expect you to stay in the house, so he did not even put in the effort to blow it down. You survived!"

		erb :two_choices
	when "run away"
		@question = "Luckily, you were able to make it out ok. Now, you have to run to another pig’s house. Which house do you run to?"
		@action = "/run_away"

		@choice_1 = "Go to the brick house"
		@choice_2 = "Go to the wood house"

		erb :two_choices
	end

end

post '/run_away' do

	case params[:choice]
	when "go to the brick house"
		@question = "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?"
		@action = "/brick"

		@choice_1 = "stay in your house"
		@choice_2 = "run away"

		erb :two_choices

	when "go to the wood house"
		@question = "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?"
		@action = "/wood"

		@choice_1 = "stay in your house"
		@choice_2 = "run away"

		erb :two_choices
	end

end

post '/wood' do

	case params[:choice]
	when "stay in your house"
		@question = "Unfortunately, the wolf was able to blow your house down. Things did not end well for you."

		erb :two_choices
	when "run away"
		@question = "Luckily, you were able to make it out ok. Now, you have to run to another pig’s house. Which house do you run to?"
		@action = "/run_away1"

		@choice_1 = "Go to the brick house"
		@choice_2 = "Go to straw house"

		erb :two_choices
	end

end

post '/run_away1' do

	case params[:choice]
	when "Go to straw house"
		@question = "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?"
		@action = "/straw"

		@choice_1 = "stay in your house"
		@choice_2 = "run away"

		erb :two_choices
	when "Go to the brick house"
		@question = "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?"
		@action = "/brick"

		@choice_1 = "stay in your house"
		@choice_2 = "run away"

		erb :two_choices
	end

end

post '/brick' do
	when "stay in your house"
		@question = "The wolf is trying to blow your house down!"
		@action = "/stay_in_your_house"

		@choice_1 = "stay in your house"
		@choice_2 = "fight!"

		erb :two_choices
	when "run away"
		@question = "Unfortunately, the wolf was easily able to run you down. Things did not end well for you."

		erb :two_choices
	end

end

post '/stay_in_your_house' do
	when "stay in your house"
		@question = "The Wolf can’t blow your house down, but eventually is able to sneak down the chimney. Things did not end well for you."

		erb :two_choices
	end

end

post '/fight!' do
	when "fight!"
		@question = "You run outside to fight the wolf. You are able to catch it by surprise and injure it! It runs away whimpering. You survived!"

		erb :two_choices
	end

end
















