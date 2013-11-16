require_relative 'dish'

FAVORITES = [  Dish.new("Tomato Sauce w/ Onion and Butter"),
               Dish.new("Red & Yellow Bell Pepper Sauce"),
               Dish.new("Skillet Chicken Pot Pie", :chicken),
               Dish.new("Skillet Tamale Pie", :beef),
               Dish.new("Arroz con Pollo", :chicken),
               Dish.new("Red Enchiladas", :chicken),
               Dish.new("Chicken Teriyaki", :chicken),
               Dish.new("Sloppy Joes", :beef),
               Dish.new("Mushroom Risotto"),
               Dish.new("Pan Roasted Chicken", :chicken),
               Dish.new("Pan Roasted Fish"),
               Dish.new("Pan seared scallops") ]

NEW_DISHES = [  Dish.new("Beef Tacos", :beef),
                Dish.new("Enchiladas Verdes", :chicken),
                Dish.new("Chicken Pot Pie Crumble", :chicken),
                Dish.new("Ultimate Beef Chili", :beef),
                Dish.new("Cuban style beans & rice"),
                Dish.new("Sauteed chicken cutlets w/ porcini sauce", :chicken),
                Dish.new("Chicken Scarparsello", :chicken),
                Dish.new("Simple roast rack of lamb", :lamb),
                Dish.new("Thin crust pizza") ]

loop do
  choices = (FAVORITES.sample(3) + NEW_DISHES.sample(2)).shuffle
  if choices.count(&:red_meat?) <= 1 && choices.count {|choice| choice.chicken?} <= 2
    choices.each do |dish|
      puts dish.name
    end
    break
  end
end