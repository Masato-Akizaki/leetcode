#
# @lc app=leetcode id=1603 lang=ruby
#
# [1603] Design Parking System
#

class ParkingSystem
    attr_accessor :slots
    
=begin
    :type big: Integer
    :type medium: Integer
    :type small: Integer
=end
    def initialize(big, medium, small)
        self.slots = []
        slots[0] = big
        slots[1] = medium
        slots[2] = small
    end


=begin
    :type car_type: Integer
    :rtype: Boolean
=end
    def add_car(car_type)
        return false if self.slots[car_type - 1] == 0
        self.slots[car_type - 1] -= 1
        return true    
    end


end

# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem.new(big, medium, small)
# param_1 = obj.add_car(car_type)
# @lc code=end