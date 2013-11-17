class Selector

  def initialize(favorite_list, new_list)
    @favorite_list = favorite_list
    @new_list = new_list
  end

  def select(rules = [])
    loop do
      choices = (@favorite_list.sample(3) + @new_list.sample(2)).shuffle
      if rules.empty? || rules.map {|rule| rule.accepts?(choices)}.all?
        return choices
      end
    end
  end

end