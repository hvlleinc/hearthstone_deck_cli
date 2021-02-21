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
  

    def get_all_cards
     
    i = 1
      3.times do
        # pulling the data from Hearthstone Api 
      data = HTTParty.get("#{@url}locale=en_US&pageSize=500&page=#{i}&set=standard", headers: @headers)
      data["cards"].each do |card|
  #collecting the data in an easily readable format
        card_hash = {
            name: card["name"],
            classId: card["classId"],
            attack: card["attack"],
            manaCost: card["manaCost"],
            keywordIds: card["keywordIds"]
            }
            
              Cards.new(card_hash)
            end
       i += 1
      end
    
      
      end

  


      end

      
      
        
 


