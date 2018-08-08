class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity =DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise("Docking station is empty") if empty?
    Bike.new
  end

  def dock(bike) 
    raise("Docking station is full") if full?
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
  def good_bike
    true
  end

end

# ds = DockingStation.new(18)
# 18.times { ds.dock(Bike.new) }
# ds.dock(Bike.new)