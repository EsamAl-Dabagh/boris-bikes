class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise("Docking station is empty") if @bikes.empty?
    Bike.new
  end

  def dock 

  end

end

class Bike 
  def good_bike
    true
  end

end

# ds = DockingStation.new
# p ds.release_bike