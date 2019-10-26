require 'pry' 
class Ship
    attr_accessor :name, :type, :booty
    @@all =[]
    def initialize(params)
        binding.pry
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear 
        @@all.clear
    end
end