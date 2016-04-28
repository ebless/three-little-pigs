require 'sinatra'



get '/' do
	@data = {:question => "You are a pig who is building your first house. What are you going to build it out of?",
			:action => "/first_choice",
			:choices => ['straw', 'wood', 'brick']}
	
	erb :index
end


post '/first_choice' do

	case params[:choice]
	when "straw"
		@data = {:question => "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?",
				:action => "/straw",
				:choices => ['stay', 'run']}

		erb :two_choices
	when "wood"
		@data = {:question => "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?",
				:action => "/wood",
				:choices => ['stay', 'run']}

		erb :two_choices
	when "brick"
		@data = {:question => "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?",
				:action => "/brick",
				:choices => ['stay', 'run']}

		erb :two_choices
	end

end

post '/straw' do

	case params[:choice]
	when "stay"
		@data = {:question => "The wolf did not expect you to stay in the house, so he did not even put in the effort to blow it down. You survived!"}

		erb :ending
	when "run"
		@data = {:question => "Luckily, you were able to make it out ok. Now, you have to run to another pig’s house. Which house do you run to?",
		:action => "/run_away",
		:choices => ["brick", "wood"]}
		
		erb :two_choices
	end

end

post '/run_away' do

	case params[:choice]
	when "brick"
		@data = {:question => "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?",
		:action => "/brick",
		:choices => ['stay', 'run']}


		erb :two_choices

	when "wood"
		@data = {:question => "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?",
		:action => "/wood",
		:choices => ['stay', 'run']}

		erb :two_choices
	end

end

post '/wood' do

	case params[:choice]
	when "stay"
		@data = {:question => "Unfortunately, the wolf was able to blow your house down. Things did not end well for you."}

		erb :ending
	when "run"
		@data = {:question => "Luckily, you were able to make it out ok. Now, you have to run to another pig’s house. Which house do you run to?",
		:action => "/run_away1",
		:choices => ["brick", "straw"]}
		
		erb :two_choices
	end

end

post '/run_away1' do

	case params[:choice]
	when "straw"
		@data = {:question => "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?",
		:action => "/straw",
		:choices => ['stay', 'run']}


		erb :two_choices
	when "brick"
		@data = {:question => "Oh no! The big bad wolf is coming to blow your house down! Do you want to stay in your house and hide, or try to run away from him?",
		:action => "/brick",
		:choices => ['stay', 'run']}


		erb :two_choices
	end

end

post '/brick' do
	case params[:choice]
	when "stay"
		@data = {:question => "The wolf is trying to blow your house down!",
		:action => '/stay_in_your_house',
		:choices => ["stay", "fight"]}
		

		erb :two_choices
	when "run"
		@data = {:question => "Unfortunately, the wolf was easily able to run you down. Things did not end well for you."}

		erb :ending
	end

end

post '/stay_in_your_house' do
	case params[:choice]
	when "stay"
		@data = {:question => "The Wolf can’t blow your house down, but eventually is able to sneak down the chimney. Things did not end well for you."}

		erb :ending
	when "fight"
		@data = {:question => "You run outside to fight the wolf. You are able to catch it by surprise and injure it! It runs away whimpering. You survived!"}

		erb :ending
	end


end
















