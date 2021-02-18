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
    "Would you like to search by keyword, class, or name?"
   
 end
#User inputs number 1-11 and returns a list of 10 mage cards 

if input = "name"
   "Please input the name of the card you'd like to search for:"

end

if input = "keyword"
   "Please input the keyword of the cards you'd like to search for:"
end

if input = "class"
 "Please insert the slug of the class of cards you want to search for: [1 - demon hunter] [ 2 - druid] [3 - hunter] [4 - mage] [5 paladin] [6 - preist ] [7 - Rogue] [8 - Shaman] [9 - Warlock] [10 - Warrior] [11 - Neutral]"
end
end


#





#     #

# end

# cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&keyword=rush&access_token=USwhHfJv275CYeVUAjrqqK3O85Ilk1AuPa")
# cards.search_by_keyword("rush")
