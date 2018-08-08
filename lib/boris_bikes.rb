class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise("Docking station is empty") if @bikes.empty?
    Bike.new
  end

  def dock(bike) 
    raise("Docking station is full") if @bikes.length == 20
    @bikes << bike
  end

  def full? 
    
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