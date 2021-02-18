# def testing
#     puts "hello"
#     binding.pry
# end



class Cards


    attr_accessor :name, :attack, :cardSetId, :manaCost
    attr_reader :minionTypeId, :keywordIds

  @@all = []
def initialize(deck_hash)  

  deck_hash.each do |k, v|
    puts "#{k}: #{v}"
    save
     end
   


def save
  @@all << self
end

def self.all
  @@all
end


end






puts Cards.all