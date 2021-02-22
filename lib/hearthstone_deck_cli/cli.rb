

class Cli


   
def run 
   
    puts "Hello, Welcome to the Hearthstone Deck Builder Version 1!"
    
   
   hearthstone_api = Api.new()
   hearthstone_api.get_all_cards

#Adheres to DRY - reusable code that I can utilize throughout the program
  def display_cards(card)
   puts %( name: #{card.name}
   classId: #{card.classId}
   attack: #{card.attack}
   manaCost: #{card.manaCost}
   keywordIds: #{card.keywordIds} )
            
  end

    input = nil
        while input != "goodbye"
            puts 
        puts "You can search for cards by name, or class"
        puts 
        puts "Classes are 'druid', 'hunter', 'mage', 'paladin', 'priest, 'rogue', 'shaman', 'warlock', 'warrior', and 'neutral' "
        puts
        puts "Names are searched via a text filter and can be typed in directly. They are case sensitive! When searching, please use the exact name you want to search for!"
        puts
        puts "To quit, say 'goodbye'"
    
        input = gets.strip.downcase
        
        

    if input == "name"
  
        
        puts "Please type in the name of the card you'd like to find:"
        input = gets.strip.downcase 
        
      card = Cards.search_by_name(input)
    #   binding.pry
        display_cards(card)
    end

    if input == "class"
       
        
        puts "Please insert the class ID of the class of cards you want to search for: %( [14 - demon hunter] [2 - druid] [3 - hunter] [4 - mage]
        [5 - paladin] [6 - priest] [7 - rogue] [8 - shaman] [9 - warlock] [10 - warrior] [11 - neutral]) "
        # binding.pry
        input = gets.strip.downcase 

# iterating through the Cards objects to display all the cards of a classm in this case 86 class cards. Here I am using OOP principles to create a new card (via the Cards class and )
       cards = Cards.search_by_class(input)
    #    binding.pry
   
    cards.each do |card|
        display_cards(card)
       end
    end
    end


    


    if input == "goodbye"
        puts "Goodbye, thank you for searching!"
       
    end # end internal`

  

end #end of Class
end

