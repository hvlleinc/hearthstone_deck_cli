# def testing
#     puts "hello"
#     binding.pry
# end



class Cards

#  attr_reader :name, :attack, :cardSetId, :manaCost, :minionTypeId, :keywordIds
 
 @@all = []


  def initialize()  
    
  end

  def card_by_class(class_hash = {})
    class_hash.each do |k, v|
      puts "#{k}: #{v}"
    end
  end
    
  def card_by_keyword(keyword_hash = {})
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
  end


end