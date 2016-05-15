class Truck
  attr_reader :space

  def initialize(space)
    @space = []
    @space_max = space
  end

  def remove_boxes(object)
    @space.delete(object)
  end

  def full?
    @space.length >= @space_max
  end

  def add_space(first_name, last_name)
    @space << Occupant.new(first_name, last_name)
  end

  def remove_space
    @space.pop
  end

  def remove_someones_box(first_name, last_name)
      @space.delete_if {|a| a.first_name == first_name && a.last_name == last_name}
  end

end
