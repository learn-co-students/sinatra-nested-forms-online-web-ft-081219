class Pirate
  @@all = [] 
  attr_accessor :name, :weight, :height 
  
  def initialize(name:, weight:, height:)
    @name = name 
    @height = height 
    @weight = weight
    @@all << self
  end
  
  def self.all 
    @@all
  end
end