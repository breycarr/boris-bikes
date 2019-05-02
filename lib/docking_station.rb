require_relative 'bike'

class DockingStation

  def release_bike
      bike = Bike.new
      return bike
  end

  def dock(bike)
    "Bike is now stored"
  end

end
