require 'boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  
  it "checks whether a bike has been created" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).not_to eq(nil)
  end

  it "releases a working bike" do 
    bike = subject.release_bike
    expect(bike.is_a?(Bike) && bike.good_bike).to eq true
  end
end