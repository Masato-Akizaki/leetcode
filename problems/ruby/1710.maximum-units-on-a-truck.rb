#
# @lc app=leetcode id=1710 lang=ruby
#
# [1710] Maximum Units on a Truck
#

# @lc code=start
# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
    boxes = []
    box_types.sort_by{|arr| arr[1] }.reverse.each do |arr|
        boxes << [arr[1]] * arr[0]
        break if boxes.length >= truck_size
    end
    boxes.flatten[0...truck_size].sum
end
# @lc code=end