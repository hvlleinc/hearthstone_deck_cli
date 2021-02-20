

class Cli


   
def run 
   
    puts "Hello, Welcome to the Hearthstone Deck Builder Version 1!"
    
   
   hearthstone_api = Api.new()
  
    input = nil
        while input != "goodbye"
            puts 
        puts "You can search for 1 card by class, keyword, or name!"
        puts 
        puts "Classes are 'druid', 'hunter', 'mage', 'paladin', 'priest, 'rogue', 'shaman', 'warlock', 'warrior', and 'neutral' "
        puts
        puts "Keywords options for this version of the search are 'battlecry', 'rush' and 'charge'"
        puts
        puts "Names are searched via a text filter and can be typed in directly."
        puts
        puts "To quit, say 'goodbye'"
    
        input = gets.strip.downcase
        
        

    if input == "get all cards"
       puts
        
        puts "Here all the cards"
        input = gets.strip.downcase 
        puts 

       cards = Api.new()
       cards.get_all_cards

    end

    if input == "class"
       
        
        puts "Please insert the slug of the class of cards you want to search for: [demon hunter] [druid] [hunter] [mage] [paladin] [priest] [rogue] [shaman] [warlock] [warrior] [neutral]"
        # binding.pry
        input = gets.strip.downcase 


       cards = Api.new()
       cards.search_by_class(input) 

    end


    if input == "keyword"
       puts "Please input the keyword of the cards you'd like to search for:"

       input = gets.strip.downcase
       cards = Api.new()
       cards.search_by_keyword(input)
    
    end



    if input == "goodbye"
        puts "Goodbye, thank you for searching!"
       
    end # end internal`

  

end #end of Class
end
end
