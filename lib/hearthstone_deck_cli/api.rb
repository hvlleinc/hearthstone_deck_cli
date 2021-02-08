require "httparty"
require "pry"






## keyword comes from user input (searching for whatever)
## works same as Djs pokemon name search
# def search_by_keyword
#   a = HTTParty.get("https://us.api.blizzard.com/hearthstone/cards?keyword=rush", headers: {"Authorization" => "Bearer USLaB8I9TQhaY62HBmjuvokklKqmPH3WQB" })
#   ## cli will have a atrr accessor of a deck -> @deck = [] attr_accessor :deck 
#   ## flow of app 
  ## 1. ask a user to search 
  ## call api to search for card on blizzard 
  ## create card objs, (create a loop to run 10 times so we create ten cards for them to search from )
  ## ask use which one to add to the deck 
  ## ask for another search



  class Api

      attr_accessor :url
      
    def initialize(url)
      @url = "https://us.api.blizzard.com/hearthstone/cards?"
      @headers = {"Authorization" => "Bearer USwhHfJv275CYeVUAjrqqK3O85Ilk1AuPa" }
    end 
    ## need something like this for all the diff searches

    def search_by_keyword(user_input)
      # data = HTTParty.get("#{@url}/keyword#{user_input}", headers: @headers)
      # data = HTTParty.get("#{@url}keyword=#{user_input}&set=standard", headers: @headers)
      data = HTTParty.get("#{@url}locale=en_US&set=standard&keyword=#{user_input}&page=1&pageSize=10", headers: @headers)
      
      
    deck_hash = {
        cardSetId: data["cards"].first["cardSetId"],
        attack: data["cards"].first["attack"],
        manaCost:  data["cards"].first["manaCost"],
        name: data["cards"].first["name"],
        minionTypeId: data["cards"].first["minionTypeId"],
        keywordIds: data["cards"].first["keywordIds"]
      }
      
      # deck = Cards.new(deck_hash)
   
        # deck = Cards.new(deck_hash)
      
      end
         
    
  end

        
     
 





  

   
 

  # malygos = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&textFilter=malygos")
  # malygos.search_by_keyword("malygos")

  
  
#  cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&class=mage&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E")
#  cards.search_by_class("mage")






































    


