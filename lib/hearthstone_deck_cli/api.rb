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
      @headers = {"Authorization" => "Bearer USfyitpY6SKjR7X3eX3YzlPYmZl4lIvoi0" }
    end 
    ## need something like this for all the diff searches

    def search_by_class(user_input)
      # data = HTTParty.get("#{@url}/keyword#{user_input}", headers: @headers)
      # data = HTTParty.get("#{@url}keyword=#{user_input}&set=standard", headers: @headers)
      data = HTTParty.get("#{@url}locale=en_US&set=standard&class=#{user_input}&page=1&pageSize=10", headers: @headers)
      
  
    deck_hash = {
      name: data["cards"].first["name"],
      class: data["cards"].first[""]
      attack: data["cards"].first["attack"],
      manaCost:  data["cards"].first["manaCost"],
        cardSetId: data["cards"].first["cardSetId"],
       
        
        minionTypeId: data["cards"].first["minionTypeId"],
        keywordIds: data["cards"].first["keywordIds"]
      }
      deck_hash.each do |k, v|
        puts "#{k}: #{v}"
      
         end

      cards = Cards.new(deck_hash)
      end
         
    
  end

        # binding.pry
     
 

cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&class=mage&page=1&pageSize=10&access_token=USfyitpY6SKjR7X3eX3YzlPYmZl4lIvoi0")
cards.search_by_class("mage")

  
  
#  cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&class=mage&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E")
#  cards.search_by_class("mage")






































    


