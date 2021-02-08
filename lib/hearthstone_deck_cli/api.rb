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
      attr_reader :cardCount
    def initialize(url)
      @url = "https://us.api.blizzard.com/hearthstone/cards?"
      @headers = {"Authorization" => "Bearer USwhHfJv275CYeVUAjrqqK3O85Ilk1AuPa" }
    end 
    ## need something like this for all the diff searches

    def search_by_keyword(user_input)
      # data = HTTParty.get("#{@url}/keyword#{user_input}", headers: @headers)
      # data = HTTParty.get("#{@url}keyword=#{user_input}&set=standard", headers: @headers)
      data = HTTParty.get("#{@url}locale=en_US&set=standard&keyword=#{user_input}&page=1&pageSize=10", headers: @headers)
      ## we loop here to create cards
      puts data["cards"].first.keys
      # binding.pry
      # while data["cardCount"] < 10
       
          
      #     puts data["cards"].first["name"]
      #     binding.pry
      
      # end
    end 


    def search_by_type(user_input)
      # data = HTTParty.get("#{@url}/keyword#{user_input}", headers: @headers)
      # data = HTTParty.get("#{@url}keyword=#{user_input}&set=standard", headers: @headers)
      data = HTTParty.get("#{@url}locale=en_US&set=standard&keyword=#{user_input}&page=1&pageSize=10", headers: @headers)
      data = HTTParty.get("#{@url}locale=en_US&set=standard&minionType=dragon&page=1&pageSize=10, headers
      ## we loop here to create cards
      puts data["cards"].first.keys
      # binding.pry
      # while data["cardCount"] < 10
       
          
      #     puts data["cards"].first["name"]
      #     binding.pry
      
      # end
    end 


  end

      #returning an array of all the cards

      # data.keys => returns
          
      #returns 
      

    #  while data["cardCount"] < 10
      # data["cards"].each do |card|
        
    #     details.each do |attr, value|
    #       if attr == :keyword
    #         value.each do |user_input|
    #           puts "#{user_input}"
    #         end
    #       end
    #     end
    #   end
    # end
          
      # binding.pry
        
      ## we loop here to create cards
    # deck = Deck.new(deck_hash)
  

    
  cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&keyword=rush&access_token=USwhHfJv275CYeVUAjrqqK3O85Ilk1AuPa")
 cards.search_by_keyword("rush")
puts cards
  # malygos = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&textFilter=malygos")
  # malygos.search_by_keyword("malygos")

  
  
#  cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&class=mage&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E")
#  cards.search_by_class("mage")


# class Cards::Api 

#     #   #card attrs for my class
    



#     #     #name, => data["cards"].first["name"]
#     #     #manaCost => integer
#     #     #class
#     #     #type (or)
#     #       #hero
#     #       #minion
#     #       #spell
#     #       #weapon
        
#     #     #minionType
#     #       #Beast
#     #       #Demon
#     #       #Dragon
#     #       #Elemental
#     #       #Mech
#     #       #Murloc
#     #       #Pirate
#     #       #Totem
          
#     #     #keyword
#     #         #battlecry
#     #         #taunt
#     #         #

#         attr_accessor :name, :classId
#         attr_reader  :class, :minionTypeId, :keywordIds

#     def initialize(hash)  
#         hash.each do |attr|
#         @k = v
#         end
#     end

#  end


# d = Deck.new({name: "Kalecgos"}, class: "4", "minionTypeId": 24,"keywordIds": [
#   8,
#   21] )

#   puts d






































    


