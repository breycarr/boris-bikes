require 'docking_station'

# describe DockingStation do
#   it "responds to release bike" do
#     docking_station = DockingStation.new
#     expect(docking_station).to respond_to(:release_bike)
#   end
# end

describe DockingStation do
  #docking_station = DockingStation.new
 describe "releases bike" do
  it { is_expected.to respond_to(:release_bike) }

  it "provides a bike that  responds to #working?" do
      bike = subject.release_bike
      expect(bike).to be_working # => the be_x can be used to replace any method with a ?
      #expect(bike).to respond_to(:working?)
  end
 end
  describe "#dock" do
   it { is_expected.to respond_to(:dock) }
  end 
end
