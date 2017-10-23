# Q0: Why is this error being thrown?
	Because there is no pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	They are all from the seed.rb file database. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	This line creates a button which runs the capture route patch request. "capture_path(id: @pokemon)" is running capture for the specific pokemon @pokemon.

# Question 3: What would you name your own Pokemon?
	Julia

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	I passed trainer_path into the redirect_to. That path needed the pokemon's trainer (@pokemon.trainer).

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	It shows the error's for @pokemon by collecting that pokemon's errors and then storing them in sentence form in "flash[:error]"/.


# Give us feedback on the project and decal below!
	The project was interesting but i think it would be better for learning if we had to do everything ourselves.

# Extra credit: Link your Heroku deployed app
