# require "pry" 

# require "hearthstone_deck_cli/version"

# require_relative "./hearthstone_deck_cli/hearthstone_cards"
##require all files here
##require all TOOLSET/LIBRARIES

require "bundler/setup"
Bundler.require(:default)
require_all "lib"



## cli will have a atrr accessor of a deck -> @deck = [] attr_accessor :deck 
### flow of app 
# 1. ask a user to search - "Would you like to search some cards?" "Y/N"
# 2. Ask a user to pick a 'class' - "Please select a card class 1 - 
#         "[ 1-Demon Hunter] [ 2- Druid] [3 - Hunter] [4 - Mage] [Paladin] [Priest] [Rogue] [Shaman] [Warlock] [Warrior] [Neutral]"
# 3. create card objs, (create a loop to run 10 times so we create ten cards for them to search from )
#     if card_count >= 96 puts "Uh, oh, that looks like a lot of cards to choose from! Would you like to filter again?" "Y/N"
# 4. Return Filter Options "Would you like to search 


### call api to search for card on blizzard 
### 
# ## ask use which one to add to the deck 
### ask for another search

class HearthstoneDeckCli
end
