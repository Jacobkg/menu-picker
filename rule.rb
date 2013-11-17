class Rule
  def initialize(predicate, type, number)
    raise ArgumentError.new("Unknown type: #{type}") unless [:max, :min].include?(type)
    @predicate = predicate
    @type = type
    @number = number
  end

  def accepts?(items)
    match_count = items.count {|item| item.public_send(@predicate) }
    if @type == :max
      match_count <= @number
    elsif @type == :min
      match_count >= @number
    end
  end
end