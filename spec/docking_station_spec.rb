require 'docking_station'

# describe DockingStation do
#   it "responds to release bike" do
#     docking_station = DockingStation.new
#     expect(docking_station).to respond_to(:release_bike)
#   end
# end

describe DockingStation do
  docking_station = DockingStation.new
  # bike =  docking_station.release_bike
  bike = Bike.new
 describe "releases bike" do
  it { is_expected.to respond_to(:release_bike) }

  it "provides a bike that  responds to #working?" do
      expect(bike).to be_working # => the be_x can be used to replace any method with a ?
      #expect(bike).to respond_to(:working?)
  end
  it "only releases a bike if a bike is docked" do
    expect { docking_station.release_bike }.to raise_error("no bikes available")
  end
 end
  describe "#dock" do
   it { is_expected.to respond_to(:dock) }
   it 'stores a bike when docked' do
     expect(docking_station.dock(bike)).to eq(bike)
   end
  end

  describe "#bike" do
  	it "tells us if there is a bike in the docking station" do
  	#bike = subject.release_bike #=> subject = { station = DockingStation.new}
  	expect(docking_station.bike).to eq(bike)
    end
  end
end
