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
# 2. Ask a user to pick a 'class' - "Please select a card class 1 - "[ 1-Demon Hunter] [ 2- Druid] [3 - Hunter] [4 - Mage] [Paladin] [Priest] [Rogue] [Shaman] [Warlock] [Warrior] [Neutral]"
# 3. create card objs, (create a loop to run 10 times so we create ten cards for them to search from )
#     if card_count >= 96 puts "Uh, oh, that looks like a lot of cards to choose from! Would you like to filter again?" "Y/N"
# 4. "Please type in a keyword: "
# 5. 


# ### call api to search for card on blizzard 
# ### 
# # ## ask use which one to add to the deck 
# ### ask for another search

class HearthstoneDeckCli

    attr_accessor :deck
    @deck = [] 

    #welcome the user
    "Hello, Welcome to Hearthstone, Would you like to search some cards?"

    #search by class 

    "Please select a class to search from: [1-Demon Hunter] [ 2- Druid] [3 - Hunter] [4 - Mage] [Paladin] [Priest] [Rogue] [Shaman] [Warlock] [Warrior] [Neutral]"

    #search_by_keyword

    "Please Input a keyword into the search: "

    #returns 10 cards

    "Please select a card for detailed information about it"

    




    #

end
