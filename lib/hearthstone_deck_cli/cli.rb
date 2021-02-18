

class Cli


   
def run 
   
    puts "Hello, Welcome to the Hearthstone Deck Builder Version 1!"
    
   
#    hearthstone_api = Api.new()
  
    input = nil
        while input != "goodbye"
        puts "You can search for 1 card by class, keyword, or name!"
        puts "Classes are 'demon hunter', 'druid', 'hunter', 'mage', 'paladin', 'priest, 'rogue', 'shaman', 'warlock', 'warrior', and 'neutral' "
        puts "Keywords options for this version of the search are 'battlecry', 'rush' and 'charge'"
        puts "Names are searched via a text filter and can be typed in directly."
        puts "To quit, say 'goodbye'"
    
        input = gets.strip.downcase
        #end of wile
        #User inputs number 1-11 and returns a list of 10 mage cards 
        

    if input == "name"
       
        api.search_by_name(input)
        puts "Please input the name of the card you'd like to search for:"
        input = gets.strip.downcase 


    #    cards = Api.new()
    #    cards.card_by_class(input) 

    end

    if input == "keyword"
       puts "Please input the keyword of the cards you'd like to search for:"

       api.search_by_keyword(input)
    #    cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&keyword=#{input}&page=1&pageSize=10&access_token=USfyitpY6SKjR7X3eX3YzlPYmZl4lIvoi0")
    #    cards.card_by_class(input) 
    end

    if input == "class"
        puts "Please insert the slug of the class of cards you want to search for: [demon hunter] [druid] [hunter] [mage] [paladin] [priest] [rogue] [shaman] [warlock] [warrior] [neutral]"
        input = gets.strip.downcase 

        api.search_by_class(input)
       
    #     cards = Api.new("https://us.api.blizzard.com/hearthstone/cards?locale=en_US&set=standard&class=#{input}&page=1&pageSize=10&access_token=USfyitpY6SKjR7X3eX3YzlPYmZl4lIvoi0")
    #    cards.card_by_class(input) 
    end


    if input == "goodbye"
        puts "Goodbye, thank you for searching!"
        Kernel.exit
    end # end internal`


end #end of Class
end
end