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

        attr_accessor :url, :headers

      def initialize(url)
        # binding.pry
        @url = "https://us.api.blizzard.com/hearthstone/cards?locale=en_US&pageSize=10&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E"
        @headers = {"Authorization" => "Bearer USwhHfJv275CYeVUAjrqqK3O85Ilk1AuPa" }
      end 
      ## need something like this for all the diff searches
    #   def search_by_keyword(user_input)
    #     # binding.pry
    #     card_url = HTTParty.get("#{@url}/keyword#{user_input}", headers: headers)
    #     ## we loop here to create cards 
    #    puts card_url
    #   end 
    # end


    

    def search_by_name(name)
        name_url = ("#{@url}/keyword#{user_input}", headers: headers)
        data = HTTParty.get(name_url)

        card1 = HearthstoneDeck.new(deck_hash)
    end




    #   def search_by_name(name)
    #     # binding.pry
    #     name = HTTParty.get("#{@url}/keyword#{user_input}", headers: headers)
    #     ## we loop here to create cards 
      
    #   end 
    #   binding.pry
    # end  


    
    api = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&keyword=battlecry&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E
    ")
    api.search_by_keyword("battlecry")

    
    class MyHearthstoneCards 

      #card attrs for my class
        #name
        #manaCost
        #class
        #type (or)
          #hero
          #minion
          #spell
          #weapon
        
        #minionType
          #Beast
          #Demon
          #Dragon
          #Elemental
          #Mech
          
        #keyword
            #battlecry
            #taunt
            #







    end


