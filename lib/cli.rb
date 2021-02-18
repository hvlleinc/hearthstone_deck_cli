require "pry" 

require "hearthstone_deck_cli/version"

require_relative "./hearthstone_deck_cli/api"
#require all files here
#require all TOOLSET/LIBRARIES

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
   

 when input != "exit"
    "Hello, Welcome to Hearthstone, Would you like to search some cards?"
    "You can search by class only at this time! Please select a class to search from: [1-Demon Hunter] [ 2- Druid] [3 - Hunter] [4 - Mage] [5 - Paladin] [6 - Priest] 
    [7 - Rogue] [8 - Shaman] [9 - Warlock] [10 - Warrior] [11- Neutral]"
    "Select a class 1-11"
 end
#User inputs number 1-11 and returns a list of 10 mage cards 



end


#





#     #

# end

# cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&keyword=rush&access_token=USwhHfJv275CYeVUAjrqqK3O85Ilk1AuPa")
# cards.search_by_keyword("rush")
