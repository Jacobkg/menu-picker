require_relative 'rule'
require_relative 'selector'
require_relative 'restaurant'

RESTAURANTS = [ Restaurant.new("Potbelly Sandwich Works"),
                Restaurant.new("Roti"),
                Restaurant.new("Washington Deli"),
                Restaurant.new("CF Folks"),
                Restaurant.new("Baja Fresh"),
                Restaurant.new("Luke's Lobster"),
                Restaurant.new("Good Stuff Eatery"),
                Restaurant.new("Devon & Blakely"),
                Restaurant.new("Food Trucks"),
                Restaurant.new("vFalafel", :new),
                Restaurant.new("Sweet Diablo", :new),
                Restaurant.new("Sweetgreen", :new),
                Restaurant.new("Bub and Pop's", :new),
                Restaurant.new("Cafe Carvy", :new)
              ]

RULES = [ Rule.new(:new?, :min, 2) ]

Selector.new(RESTAURANTS).select(RULES).each do |restaurant|
  puts restaurant.name
end