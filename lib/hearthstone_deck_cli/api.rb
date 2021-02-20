require "httparty"
# require "pry"
require_relative "./cli"






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
      
    def initialize()
      @url = "https://us.api.blizzard.com/hearthstone/cards?"
      @headers = {"Authorization" => "Bearer USvCfh3HmuAlyvXynC65a7G0mZO0ZK3Tnr" }
    end 
    ## need something like this for all the diff searches

    def get_all_cards
      # data = HTTParty.get("#{@url}/keyword#{user_input}", headers: @headers)
      # data = HTTParty.get("#{@url}keyword=#{user_input}&set=standard", headers: @headers)
    i = 1
      3.times do
      data = HTTParty.get("#{@url}locale=en_US&pageSize=500&page=#{i}&set=standard", headers: @headers)
      data["cards"].each do |card|
  
        card_hash = {
            name: card["name"],
            class: card["classId"],
            attack: card["attack"],
            manaCost: card["manaCost"],
            cardSetId: card["cardSetId"],
              minionTypeId: card["minionTypeId"],
              keywordIds: card["keywordIds"] 
            }
            
              Cards.new(card_hash)
            end
       i += 1
      end
    
      # binding.pry
  #collecting the data in an easily readable format
   
 
      # binding.pry
    # calling on the Card class to create card objects 
      # cards_class = Cards.new(card_hash)
      # card_obj = cards_class.card_by_class(class_hash)
      # card = Card.new
      end





  #   def search_by_class(user_input)
  #     # data = HTTParty.get("#{@url}/keyword#{user_input}", headers: @headers)
  #     # data = HTTParty.get("#{@url}keyword=#{user_input}&set=standard", headers: @headers)
  #     data = HTTParty.get("#{@url}locale=en_US&set=standard&class=#{user_input}&page=1&pageSize=10", headers: @headers)
  #     binding.pry
  # #collecting the data in an easily readable format
  #   card_hash = {
  #     name: data["cards"].first["name"],
  #     class: data["cards"].first["classId"],
  #     attack: data["cards"].first["attack"],
  #     manaCost:  data["cards"].first["manaCost"],
  #     cardSetId: data["cards"].first["cardSetId"],
  #       minionTypeId: data["cards"].first["minionTypeId"],
  #       keywordIds: data["cards"].first["keywordIds"]
  #     }
      
        
  #   # calling on the Card class to create card objects 
  #     cards_class = Cards.new(card_hash)
  #     # card_obj = cards_class.card_by_class(class_hash)
  #     # card = Card.new
  #     end


      #the rest of the methods follow the same pattern, adhering to DRY
      # def search_by_keyword(user_input)
      #   # data = HTTParty.get("#{@url}/keyword#{user_input}", headers: @headers)
      #   # data = HTTParty.get("#{@url}keyword=#{user_input}&set=standard", headers: @headers)
      #   data = HTTParty.get("#{@url}locale=en_US&set=standard&keyword=#{user_input}&page=1&pageSize=10", headers: @headers)
        
    
      #   card_hash = {
      #   name: data["cards"].first["name"],
      #   class: data["cards"].first["classId"],
      #   attack: data["cards"].first["attack"],
      #   manaCost:  data["cards"].first["manaCost"],
      #   cardSetId: data["cards"].first["cardSetId"],
      #     minionTypeId: data["cards"].first["minionTypeId"],
      #     keywordIds: data["cards"].first["keywordIds"]
      #   }
      # # puts class_hash
      #   keyword_class = Cards.new(card_hash)
      #   # keyword_obj = keyword_class.card_by_keyword(card_hash)
      #   # card = Card.new
      #   end
      


      #   def search_by_name(user_input)
      #     # data = HTTParty.get("#{@url}/keyword#{user_input}", headers: @headers)
      #     # data = HTTParty.get("#{@url}keyword=#{user_input}&set=standard", headers: @headers)
      #     data = HTTParty.get("#{@url}locale=en_US&set=standard&name=#{user_input}&page=1&pageSize=10", headers: @headers)
          
      
      #     card_hash = {
      #     name: data["cards"].first["name"],
      #     class: data["cards"].first["classId"],
      #     attack: data["cards"].first["attack"],
      #     manaCost:  data["cards"].first["manaCost"],
      #     cardSetId: data["cards"].first["cardSetId"],
      #       minionTypeId: data["cards"].first["minionTypeId"],
      #       keywordIds: data["cards"].first["keywordIds"]
      #     }
      #   # puts class_hash
      #     name_class = Cards.new(card_hash)
      #     name_obj = name_class.card_by_name(card_hash)
      #     # card = Card.new
      #     end
          
  


      end

      
      
         
    
 

        # binding.pry
     
 

# cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&class=mage&page=1&pageSize=10&access_token=USfyitpY6SKjR7X3eX3YzlPYmZl4lIvoi0")
# cards.search_by_class("mage")

# cards2 = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&keyword=rush&page=1&pageSize=10&access_token=USfyitpY6SKjR7X3eX3YzlPYmZl4lIvoi0")
# cards2.search_by_keyword("rush")
  
  
#  cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&class=mage&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E")
#  cards.search_by_class("mage")


