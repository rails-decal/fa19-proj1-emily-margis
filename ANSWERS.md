# Q0: Why are these two errors being thrown?
The first error occurs because there are migrations that have not been run yet. The second is because we haven't initialized a Pokemon model.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In our seeds.rb file, we specified 4 pokemon to randomly choose to appear by default. The common factor between the pokemon that appear is that they are either the starter pokemon for grass, water, or fire type, or they are pikachu. These are the popular/main pokemon. They also have level 1-20.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Creates a button that when pressed, will go to the route we labeled as capture which calls the capture method of our PokemonsController
# Question 3: What would you name your own Pokemon?
trashcan
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed '/trainers/' + the trainer id I used in my parameters
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
