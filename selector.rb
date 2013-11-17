class Selector

  def initialize(list)
    @list = list
  end

  def select(rules)
    loop do
      choices = @list.sample(5)
      if rules.map {|rule| rule.accepts?(choices)}.all?
        return choices
      end
    end
  end

end