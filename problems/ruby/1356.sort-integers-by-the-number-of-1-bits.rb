#
# @lc app=leetcode id=1356 lang=ruby
#
# [1356] Sort Integers by The Number of 1 Bits
#

# @lc code=start
# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
    arr.sort_by {|v| [v.to_s(2).count('1'), v] }
end
# @lc code=end