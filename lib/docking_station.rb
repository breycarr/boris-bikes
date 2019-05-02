require_relative 'bike'

class DockingStation

  def release_bike
    if @bike.nil?
      raise "no bikes available"      
    else
      @bike
    end
    # raise "no bikes available" if @bike.nil?
    # @bike
  end

  def dock(bike)
    @bike = bike
  end

  # def bike
  #   @bike
  # end
  attr_reader :bike
end
