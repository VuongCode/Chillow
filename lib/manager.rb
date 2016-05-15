module Manager
  attr_reader :space, :add_space, :remove_space

  def full?
    @space.length >= @space_max
  end

  def add_space(first_name, last_name)
    @space << Occupant.new(first_name, last_name)
  end

  def remove_space
    @space.pop
  end
end
