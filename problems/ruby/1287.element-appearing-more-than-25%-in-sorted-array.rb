#
# @lc app=leetcode id=1287 lang=ruby
#
# [1287] Element Appearing More Than 25% In Sorted Array
#

# @lc code=start
# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
    threshold = arr.length / 4.00
    arr.tally.select{|k, v| v > threshold}.keys.first
end
# @lc code=end