class Cli

  
    #welcome the user
   
def run 
   
    puts "Hello, Welcome to the Hearthstone Deck Builder Version 1!"
    api = Api.new()
    input = nil
    puts "You can search for 1 card by class, keyword, or name!"
    puts "Classes are 'demon hunter', 'druid'. 'hunter', 'mage', 'paladin', 'preist, 'rogue', 'shaman', 'warlock', 'warrior', and 'neutral' "
    puts "Keywords options for this version of the search are 'battlecry', 'rush' and 'cahrge'"
    puts "Names are searched via a text filter and can be typed in directly."
    puts "To quit, say 'goodbye"
   
    input = gets.strip.downcase
 end #end of wile
#User inputs number 1-11 and returns a list of 10 mage cards 

if input == "name"
   "Please input the name of the card you'd like to search for:"
   input = gets.strip.downcase /n

   x = api.card_by_name(input) /n

end

if input == "keyword"
   "Please input the keyword of the cards you'd like to search for:" /n 
   x = api.card_by_keyword(input) /n 
end

if input == "class"
puts "Please insert the slug of the class of cards you want to search for: [demon hunter] [druid] [hunter] [mage] [paladin] [preist ] [Rogue] [shaman] [warlock] [warrior] [neutral]"
 input = gets.strip.downcase /n 
x = api.card_by_class(input) /n 
end


   if input == "goodbye"
      puts "Goodbye, thank you for searching!"
      input = strip.downcase
   end # end internal


end #end of Class
