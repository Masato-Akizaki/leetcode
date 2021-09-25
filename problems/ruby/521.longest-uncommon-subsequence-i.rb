#
# @lc app=leetcode id=521 lang=ruby
#
# [521] Longest Uncommon Subsequence I
#

# @lc code=start
# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
  return -1 if a == b
  [a.length, b.length].max
end
# @lc code=end

