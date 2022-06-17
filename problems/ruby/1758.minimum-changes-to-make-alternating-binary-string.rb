#
# @lc app=leetcode id=1758 lang=ruby
#
# [1758] Minimum Changes To Make Alternating Binary String
#

# @lc code=start
# @param {String} s
# @return {Integer}
def min_operations(s)
    even_indexs = s.chars.select.with_index { |_, i| i.even? }
    odd_indexs = s.chars.select.with_index { |_, i| i.odd? }
    [even_indexs.count("0") + odd_indexs.count("1"), even_indexs.count("1") + odd_indexs.count("0")].min
end
# @lc code=end