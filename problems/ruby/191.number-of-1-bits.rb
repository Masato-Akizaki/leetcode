#
# @lc app=leetcode id=191 lang=ruby
#
# [191] Number of 1 Bits
#

# @lc code=start
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n.to_s(2).count('1')
end
# @lc code=end

