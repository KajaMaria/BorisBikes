require_relative 'bike'

class DockingStation
  attr_reader :bike
# @dock_array = []
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end



# docking_station = DockingStation.new
