class Restaurant

  attr_reader :name
  def initialize(name, *tags)
    @name = name
    @tags = tags
  end

  def new?
    @tags.include? :new
  end

end