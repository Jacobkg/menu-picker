require_relative 'dish'
require_relative 'rule'
require_relative 'selector'

DISHES = [  Dish.new("Tomato Sauce w/ Onion and Butter"),
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
               Dish.new("Pan Seared Filet Mignon", :beef),
               Dish.new("Beef Tacos", :new, :beef),
               Dish.new("Enchiladas Verdes", :new, :chicken),
               Dish.new("Chicken Pot Pie Crumble", :new, :chicken),
               Dish.new("Ultimate Beef Chili", :new, :beef),
               Dish.new("Cuban style beans & rice", :new, :pork),
               Dish.new("Sauteed chicken cutlets w/ porcini sauce", :new, :chicken),
               Dish.new("Chicken Scarparsello", :new, :chicken),
               Dish.new("Simple roast rack of lamb", :new, :lamb),
               Dish.new("Hearty Minestrone Soup", :new),
               Dish.new("Seared scallops with brussel sprouts and bacon", :new, :seafood)
            ]

RULES = [ Rule.new(:red_meat?, :max, 1),
          Rule.new(:chicken?, :max, 2),
          Rule.new(:meat?, :max, 4),
          Rule.new(:new?, :min, 2)
        ]

Selector.new(DISHES).select(RULES).each do |dish|
  puts dish.name
end