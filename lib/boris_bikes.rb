class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity =DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise("Docking station is empty") if empty?
    @bikes.last.good_bike
    @bikes.pop
  end

  def dock(bike) 
    raise("Docking station is full") if full?
    bike.good_bike(false)
    @bikes << bike
  end

  private

  def empty?
    @bikes.empty?
  end

  def full? 
    @bikes.length == capacity
  end

end

class Bike 
  attr_reader :condition

  def initialize
    @condition = true
  end

  def good_bike(condition=true)
    @condition = condition
    self
  end

end

# ds = DockingStation.new(18)
# 18.times { ds.dock(Bike.new) }
# ds.dock(Bike.new)
