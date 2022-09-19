#
# @lc app=leetcode id=2220 lang=ruby
#
# [2220] Minimum Bit Flips to Convert Number
#

# @lc code=start
# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
  (start ^ goal).to_s(2).split("").map(&:to_i).sum
end
# @lc code=end