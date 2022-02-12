#
# @lc app=leetcode id=1184 lang=ruby
#
# [1184] Distance Between Bus Stops
#

# @lc code=start
# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
  start, destination = destination, start if start > destination
  [distance[start..destination-1].sum, distance.sum - distance[start..destination-1].sum].min
end

# @lc code=end