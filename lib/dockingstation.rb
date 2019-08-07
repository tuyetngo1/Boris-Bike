require_relative 'bike'
class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  def release_bike
    if empty?
      raise "There are no bikes available"
    else
      @bikes.pop
    end
  end
  def dock(bike)
    # if @bikes.size == 20
    #   raise "No more room"
    # else
    #   @bikes.push(bike)
    # end
    raise 'No more room' if full?
    @bikes.push(bike)
  end

  private
  def full?
    @bikes.size == 20
  end
  def empty?
    @bikes.size == 0
  end

end
