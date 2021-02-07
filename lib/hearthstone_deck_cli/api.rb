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
      @url = "https://us.api.blizzard.com/hearthstone/cards?set=standardlocale=en_US&pageSize=10"
      @headers = {"Authorization" => "Bearer US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E" }
    end 
    ## need something like this for all the diff searches

    def search_by_class(classes)
      data = HTTParty.get("#{@url}&class=#{classes}", headers: @headers)
  
      # puts data["cards"].first

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
  end


    
  

  # malygos = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&textFilter=malygos")
  # malygos.search_by_keyword("malygos")

  
  
 cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&class=mage&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E")
 cards.search_by_class("mage")


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

    # class Api 

    #     # attr_accessor :url, :headers

      
    #     # binding.pry
    #     def initialize(url)
    #       @url = "https://us.api.blizzard.com/hearthstone/cards?"
    #       @headers = {"Authorization" => "Bearer USwhHfJv275CYeVUAjrqqK3O85Ilk1AuPa" }
    #     end 
     
    #   ## need something like this for all the diff searches
    #   def search_by_keyword(user_input)
    #     data = HTTParty.get("#{@url}/keyword#{user_input}", @headers: headers)
    #     ## we loop here to create cards
    #     puts data
    #   end 
    # end 
      # binding.pry
#take account of the card count
    #   def cardCount(cardcount)
        
    #     @cardCount = cardCount
       
    #   end
    #   puts @cardCount
    # end
# base_url = "https://us.api.blizzard.com/hearthstone/cards?locale=en_US&textFilter=malygos&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E"
# puts base_url


  #   class Api 

  #     attr_accessor :url

  #     def initialize(url)
  #       # @url = "https://us.api.blizzard.com/hearthstone/cards?"
  #       # @headers = {"Authorization" => "Bearer USwhHfJv275CYeVUAjrqqK3O85Ilk1AuPa" }
  #     end 
  #     ## need something like this for all the diff searches
  #   #   def search_by_keyword(user_input)
  #   #     data = HTTParty.get("#{@url}/keyword#{user_input}", @headers: headers)
  #   #     ## we loop here to create cards
  #   #   end 

  # #     def search_by_name(user_input)

  # #       req_url = "#{@url}textFilter=#{user_input}"
  # #       binding.pry
  # #     data HTTParty.get(req_url)
  # #     end
  # # end 
    
  #   end

  # Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&textFilter=malygos&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E")

# api = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&sort=name&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E")
    # api = Api.new("https://us.api.blizzard.com/hearthstone/cards?")
    # binding.pry
  #  api.search_by_name("malygos")
    # api.search_by_keyword("battlecry")
  #   def search_by_name(name)
  #      name_url = "#{@url}/class=mage&set=wild&sort=name&textFilter=#{name}"}
  # #      binding.pry
      
       
  
  #     end

  
       
  #     binding.pry
       
       
  #     #  c = MyHearthstoneCards.new(deck_hash)
  #       # deck = MyHearthstoneDeck.new(deck_hash)
  # end
  

  




      


    #this works - need to break it down into smaller parts - 
  

  #  api = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&pageSize=10&access_token=US9AEn9hnxs521REWaIvHp4xHGO5bzSc4E")
  #  api.search_by_name("frostbolt")
    
    


