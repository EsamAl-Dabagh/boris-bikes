class DockingStation

  attr_reader :bikes

  def initialize
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
    @bikes.length == 20
  end

end

class Bike 
  def good_bike
    true
  end

end

# ds = DockingStation.new
# 20.times { ds.dock(Bike.new) }
# ds.dock(Bike.new)