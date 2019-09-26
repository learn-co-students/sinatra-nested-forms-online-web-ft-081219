class Ship
  attr_accessor :name, :type, :booty, :ships
  @@all = []
  
  def initialize(attributes)
    attributes.each{|k, v| self.send("#{k}=", v)}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
  
end