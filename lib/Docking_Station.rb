require_relative 'bike'

class DockingStation
   def initialize
     @bike_count = [Bike.new]
   end

   def count
     @bike_count.count
   end

   def release_bike
     if empty? then raise("No more bikes.")
     else
       @bike_count.pop
      #  @bike = bike
     end
   end

   def dock(bike)   # setter method
   	if full? then raise("Bike dock is full.")
   else
     @bike_count << bike
     @bike = bike
 	end
   end

   attr_reader :bike  # getter method

private
  def full?
    if @bike_count.count > 19
      true
    end
  end

    def empty?
      if @bike_count.count == 0
        true
      end
    end

end
