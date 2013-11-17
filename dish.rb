class Dish

  attr_reader :name

  def initialize(name, *tags)
    @name = name
    @tags = tags
  end

  def new?
    @tags.include? :new
  end

  def red_meat?
    (@tags & [:beef, :lamb, :pork]).size > 0
  end

  def chicken?
    @tags.include? :chicken
  end

  def seafood?
    @tags.include? :seafood
  end

  def meat?
    red_meat? || seafood? || chicken?
  end
end