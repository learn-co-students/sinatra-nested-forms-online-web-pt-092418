class Ship
    attr_accessor :name, :type, :booty

    SHIPS = []

    def initialize(info)
        @name = info[:name]
        @type = info[:type]
        @booty = info[:booty]
        SHIPS << self
    end

    def self.all
        SHIPS
    end

    def self.clear
        SHIPS.clear
    end

end