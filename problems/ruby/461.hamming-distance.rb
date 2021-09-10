#
# @lc app=leetcode id=461 lang=ruby
#
# [461] Hamming Distance
#

# @lc code=start
# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  (x ^ y).to_s(2).count('1')   
end
# @lc code=end

