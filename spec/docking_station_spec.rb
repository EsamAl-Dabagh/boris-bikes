require 'boris_bikes'


describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it "checks whether a bike has been created" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).not_to eq(nil)
  end
end


