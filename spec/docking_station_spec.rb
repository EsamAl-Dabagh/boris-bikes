require 'boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  
  it "checks whether a bike has been created" do
    station = DockingStation.new
    station.bikes << Bike.new
    bike = station.release_bike
    expect(bike).not_to eq(nil)
  end

  it "releases a working bike" do 
    subject.bikes << Bike.new
    bike = subject.release_bike
    expect(bike.is_a?(Bike) && bike.good_bike).to eq true
  end

  it { is_expected.to respond_to(:dock) }

  it { is_expected.to respond_to(:bikes) }

  it "raises an error if release_bike is called on empty array" do 
    expect { subject.release_bike }.to raise_error("Docking station is empty")
  end

  it "raises an error if #dock is called on a full docking station" do 
    subject.capacity.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error("Docking station is full")
  end

  it { is_expected.to respond_to(:capacity) }

  it "should set DEFAULT_CAPACITY for new instances to equal 20" do
    expect(subject.capacity).to eq 20
  end
end