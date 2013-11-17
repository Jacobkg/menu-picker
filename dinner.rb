require_relative 'dish'
require_relative 'rule'
require_relative 'selector'

FAVORITES = [  Dish.new("Tomato Sauce w/ Onion and Butter"),
               Dish.new("Red & Yellow Bell Pepper Sauce w/ Sausages", :chicken),
               Dish.new("Skillet Chicken Pot Pie", :chicken),
               Dish.new("Skillet Tamale Pie", :beef),
               Dish.new("Arroz con Pollo", :chicken),
               Dish.new("Red Enchiladas", :chicken),
               Dish.new("Chicken Teriyaki", :chicken),
               Dish.new("Sloppy Joes", :beef),
               Dish.new("Mushroom Risotto"),
               Dish.new("Pan Roasted Chicken", :chicken),
               Dish.new("Pan Roasted Fish", :seafood),
               Dish.new("Pan seared scallops", :seafood),
               Dish.new("Pan Seared Filet Mignon", :beef) ]

NEW_DISHES = [  Dish.new("Beef Tacos", :beef),
                Dish.new("Enchiladas Verdes", :chicken),
                Dish.new("Chicken Pot Pie Crumble", :chicken),
                Dish.new("Ultimate Beef Chili", :beef),
                Dish.new("Cuban style beans & rice", :pork),
                Dish.new("Sauteed chicken cutlets w/ porcini sauce", :chicken),
                Dish.new("Chicken Scarparsello", :chicken),
                Dish.new("Simple roast rack of lamb", :lamb),
                Dish.new("Hearty Minestrone Soup"),
                Dish.new("Seared scallops with brussel sprouts and bacon", :seafood) ]

RULES = [ Rule.new(:red_meat?, :max, 1),
          Rule.new(:chicken?, :max, 2),
          Rule.new(:meat?, :max, 4)]

Selector.new(FAVORITES, NEW_DISHES).select(RULES).each do |dish|
  puts dish.name
end