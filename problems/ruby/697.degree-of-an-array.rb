#
# @lc app=leetcode id=697 lang=ruby
#
# [697] Degree of an Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
  count = nums.tally
  degree = count.values.max
  
  count.find_all{ |k,v| v == degree }
       .map{ |k,v| nums.rindex(k) - nums.index(k) + 1 }
       .min
end
# @lc code=end

