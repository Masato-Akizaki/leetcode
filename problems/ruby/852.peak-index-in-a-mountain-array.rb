#
# @lc app=leetcode id=852 lang=ruby
#
# [852] Peak Index in a Mountain Array
#

# @lc code=start
# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  arr.index(arr.max)
end
# @lc code=end

