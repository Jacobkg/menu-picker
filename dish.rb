class Dish

  attr_reader :name

  def initialize(name, *tags)
    @name = name
    @tags = tags
  end

  def red_meat?
    @tags.include?(:beef) || @tags.include?(:lamb)
  end

  def chicken?
    @tags.include? :chicken
  end
end