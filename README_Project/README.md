# T1A3_Choose_Your_Own_Adventure

### A game for those looking for a story based adventure with plenty of choices along the way.

Getting the Development plan out of the way, after the class had just gone over a limited choice recsource based app, I was feeling the creativity so I wanted to make a short story based choose your own adventure with recourses and a main focus on story, correct choices and plot developments, this stems from an old goosebumps interactive novel I had as a child and feel an impulse to use that as an idea, elements I would like to include would be a 4th wall breaking mechanic from a game called "One Shot" of creating files and illuding to the fact of where they might be or forcefully opening them to create a sense of involvement in the story unlike others.
So, deeper, The user will be able to input their name and may be in either first or third person to themselves or another charecter. currently undecided.
after that the game will explain in the simplest terms possible of how to interact, that you can only use one of the listed options, to make sure there are no
grammatical or punctuation errors to ensure best experience while playing, the basic mechanics, rescourses, and how hard the game will be and that their choices will greatly
affect the game and story, as well as having unintened dead ends to the story through their actions (hopfully deservingly and not to surprise them by giving false direction with prompts)
having at least one puzzle in the game, and at least one interaction between the user and the pc they are playing from. finally at least 2 endings that can result from different player actions that can serve as either a moral compass or just due to how well they played the game.
The jist is that I want to be able to provide a product in a short frame of time so the requirements and work will be kept within a small scope and may be expanded over time to provide more features, however the scope may be shrank if this project is to ambitious(I dont think it is currently?)

### R4 Source control for this project is located here

https://github.com/jacobknighj12/T1A3_Choose_Your_Own_Adventure

### R5 The problems this will be solving are:

- Current lack of adventure
- Escapeism as many right now will be feeling trapped and alone
- A entertaining(hopefully) way to spend some inside time

The target audience will be people that are at least enough versed to understand the requirements to run the app and be able to enjoy it,
the age demographic it will be targeting is probably 16+/MA there will be some horror themes so it is not aimed at a young demographic but
any old enough to enjoy it and any tech litterate enough to operate it, it will be thouroughly explained on how to install and run however getting
enviroments set up is not exactly an easy task even for very tech litterate people.

The basic user interactions will be through varied prompts that will come up after reading out a scene and may or may not affect progression or rescources
in a text format displayed in a terminal capable of running the current ruby 2.7.2 and will require at least one gem as a dependancy.

### R6 Specific list of desired features

- Rescourse juggling gameplay
  This feature will involve the use of multiple recourses including but not limited too; Health, stamina, gold and possibly if I can work it in magic.
  This feature will be one of the core pieces of gameplay used to keep the audience engaged and keeping track of in game events and the results of the events
  possibly blocking off story choices without a certain ammount of a rescource or otherwise.

- Multiple story paths that affect the ending and or paths you can take, through this the story can and may have replayability possibly due to a dead end or
  because of a path the the audience wanted to take but was unsure if it lead somwhere very dangerous.
  each path providing some story context, world building that may have otherwise in the other paths not been divulged, even better maybe a secret for ignoreing the
  prompts on screen and typing somthing meta like, the tavern keeper asking what you want to drink then while not stated in the prompts, "coffee" then leading to a magical
  brew of coffee increasing the players health.
  then being able to send the player back to before that event was started to continue the main storyline.

- Puzzle gameplay, hopefully incorperating some elements described from "One shot" to engage the user by prompting to open their file browser and search for somthing
  or forcefully opening a text document or maybe a picture if there are 3 failed attempts the program will openly state where the file is located so the user does not get
  stuck, because that, is not fun.

### R7 Outlining the user interaction experience for app

- how the user will find out how to interact with / use each feature
  The user will be greeted with a simple, sweet and very direct way to interact, input and be given all of the information that is required to play it though text.
  They will initially be shown their basic rescources and list out their options in context to the situation after being prompted to enter their real life name for best
  results, all of the inputs will be told to be no capitals with correct spelling the same as listed in the text when prompted or otherwise hitting enter to continue.
  the user will interact with the different story paths based on how they react to events, if they are brave or cautious each event they interact with will affect how the story
  will conclude.
  The puzzle gameplay will be a prompted opening of a file to progress the story, to them input what they see, hopefully I get this feature working fully as I hope.

- how the user will interact with / use each feature
  The user will interact with with the rescources through the given method as instructed, they will enter their response to a situation then will be accordingly given a
  change to their rescources for how they interacted with that event.
  The user interaction between their choices and the finnal result will keep them on edge about how to interact with the story and what they want for the charecters or
  if they are just trying to win the game and get through it.
  The puzzle gameplay will challenge the user to think outside of the box however if it is too challenging it will be directly solved for them as, not everyone has time for that
  and there wont be any walkthroughs for the game, yet.

- how errors will be handled by the application and displayed to the user
  Whenever a user inputs a capital letter, there will be a displayed "You have entered a capital letter, please correct your input."
  Whenever a user inputs a word or selection the program doesnt recognise it will display "selection not recognized, please check spelling and retry."
  If a user attempts to run the program without the dependancy gem, I will raise a prompt "X Gem not installed please go and install it before running"

### R8 Develop a diagram that describes control flow for the app

![Expected Control flow for the App](ControlFlow.png)

### R9 Develop an implementation plan which:

- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item
  In this trello they are ordered by Priority and all have and will be orginized by when they are started, partialy complete, fully complete and when they break.
  Unfortunatly the automatic in build timelines are a premuim feature so I resorted to labling each feature with an expected finish date for each feature to be fully completed and functioning with the rest of the program.
  ![T1A3_Trello](T1A3_Trello.jpg)
  ![Updated_Trello](Trello_update.jpg)

### R10 Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:

- steps to install the application

  To install this application you will need to download the files from git https://github.com/jacobknighj12/T1A3_Choose_Your_Own_Adventure
  You will need to install all dependancies and then run the main.rb file to start the game!

- any dependencies required by the application to operate

  Ruby 2.7.2
  probbably wallpapers 0.0.9 gem https://rubygems.org/gems/wallpapers Would love to use this for a element for when the player goes searching for a file I can scare them with a spooky background or somthing.
  and maybe wavefile 1.1.1 gem https://rubygems.org/gems/wavefile Would love some background music
  for the gems its if I can get the expected results from the use of them.

- any system/hardware requirements

  233 MHz processor, 64 MB of RAM, 1.5 GB of available hard drive space, and an SVGA-capable video card. are the minimum requirements
  to run windows xp, if you can run that you will be able to run this.

Updated instructions on how to install and run the program, have been tested with a industry professional.

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
