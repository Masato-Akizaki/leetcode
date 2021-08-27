#
# @lc app=leetcode id=389 lang=ruby
#
# [389] Find the Difference
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  s_hash = s.chars.tally
  t_hash = t.chars.tally
  t_hash.merge(s_hash){|key, t_val, s_val| t_val - s_val}.select{|_k, v| v == 1}.keys.first
end
# @lc code=end

