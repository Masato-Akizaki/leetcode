#
# @lc app=leetcode id=696 lang=ruby
#
# [696] Count Binary Substrings
#

# @lc code=start
# @param {String} s
# @return {Integer}
def count_binary_substrings(s)
  count = 0
  prev = 0
  curr = 1
  for i in 1..s.length do
    if s[i-1] != s[i]
      count += [prev, curr].min
      prev = curr
      curr = 1
    else
      curr += 1
    end
  end
  count
end
# @lc code=end

