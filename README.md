To install this project;
Git clone git@github.com:jacobknighj12/T1A3_Choose_Your_Own_Adventure.git

Required dependancies:
Ruby 2.7.2
gem 'rainbow', '~> 3.0'
gem 'tty-link', '~> 0.1.1'

Optional dependancy for testing purposes; for use run from player_spec.rb:
gem 'rspec', '~> 3.0'

Run project from main.rb in terminal

Project structure:
main.rb requires in each chapter and the player for the app, passes the player into
the chapter and calls for the players "perform" action to kick off the gameplay loop.
players actions are called by the chapters to adjust the players stat values, player can
enter "cheat codes" to start with higher stats.

README.md for Project submission has been relocated to the README_Project folder
