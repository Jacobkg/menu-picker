require_relative 'dish'
require_relative 'rule'
require_relative 'selector'

class Restaurant

  attr_reader :name
  def initialize(name, *tags)
    @name = name
    @tags = tags
  end

end

FAVORITES = [ Restaurant.new("Potbelly Sandwich Works"),
              Restaurant.new("Roti"),
              Restaurant.new("Washington Deli"),
              Restaurant.new("CF Folks"),
              Restaurant.new("Baja Fresh"),
              Restaurant.new("Luke's Lobster"),
              Restaurant.new("Good Stuff Eatery"),
              Restaurant.new("Devon & Blakely"),
              Restaurant.new("Food Trucks")
            ]

NEW_PLACES = [ Restaurant.new("vFalafel"),
               Restaurant.new("Sweet Diablo"),
               Restaurant.new("Sweetgreen"),
               Restaurant.new("Bub and Pop's"),
               Restaurant.new("Cafe Carvy")
             ]

Selector.new(FAVORITES, NEW_PLACES).select.each do |restaurant|
  puts restaurant.name
end