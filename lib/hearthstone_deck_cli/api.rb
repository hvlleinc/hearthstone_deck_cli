require "httparty"
require "pry"



## keyword comes from user input (searching for whatever)
## works same as Djs pokemon name search
# def search_by_keyword
#     a = HTTParty.get("https://us.api.blizzard.com/hearthstone/cards?keyword=rush", headers: {"Authorization" => "Bearer USLaB8I9TQhaY62HBmjuvokklKqmPH3WQB" })
#     ## cli will have a atrr accessor of a deck -> @deck = [] attr_accessor :deck 
#     ## flow of app 
#     ## 1. ask a user to search 
#     ## call api to search for card on blizzard 
#     ## create card objs, (create a loop to run 10 times so we create ten cards for them to search from )
#     ## ask use which one to add to the deck 
#     ## ask for another search

    class Api 
      def initialize()
        @url = "https://us.api.blizzard.com/hearthstone/cards?"
        @headers = {"Authorization" => "Bearer USLaB8I9TQhaY62HBmjuvokklKqmPH3WQB" }
      end 
      ## need something like this for all the diff searches
      def search_by_keyword(user_input)
        data = HTTParty.get("#{url}/keyword#{user_input}", headers: headers)
        ## we loop here to create cards
        if data == 10
        end
      end 
    end 

    