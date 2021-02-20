# def testing
#     puts "hello"
#     binding.pry
# end



class Cards

  attr_reader :name, :attack, :cardSetId, :manaCost, :minionTypeId, :keywordIds
 
 @@all = []


 
    def initialize(hash)
      hash.each do |k, v|
          self.instance_variable_set("@#{k}", v)
      end
      save
    end



  def card_by_class(card_hash = {})
    class_hash.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
    
  def card_by_keyword(card_hash = {})
  keyword_hash.each do |k, v|
    puts "#{k}: #{v}"
  end
end

  def card_by_name(name_hash = {})
    name_hash.each do |k, v|
      puts "#{k}: #{v}"
    end
  end



  def save 
    @@all << self
  end

  def self.all
    @@all
    # binding.pry
  end



  

end