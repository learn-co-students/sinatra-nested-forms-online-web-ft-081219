class Pirate
  attr_accessor :name, :weight, :height, :ships
  
  @@all = []
  
  def initialize(attributes)
    attributes.each do |k, v| 
      if k == "ship"
        @ship = Ship.new(v)
      else
        self.send("#{k}=", v)
      end
    end
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
  
end