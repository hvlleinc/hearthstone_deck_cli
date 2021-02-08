# def testing
#     puts "hello"
#     binding.pry
# end
class Cards


    attr_accessor :name, :attack, :cardSetId, :manaCost
    attr_reader :minionTypeId, :keywordIds

  @@all = []
def initialize(deck_hash)  
    
    hash.each do |k, v|
#    x = "@#{k.to_s} = #{v}"
   
        self.send
        # binding.pry
    end
    @@all << self
end

def save
  @@all << self
end

def self.all
  @@all
end

private

def minionTypeId=(minionTypeId)
    @minionTypeId = minionTypeId
end

def keywordIds=(keywordIds)
    @keywordIds = keywordIds
end

end



puts Cards.all