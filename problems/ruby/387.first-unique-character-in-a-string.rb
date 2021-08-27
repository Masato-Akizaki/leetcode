#
# @lc app=leetcode id=387 lang=ruby
#
# [387] First Unique Character in a String
#

# @lc code=start
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  first_uniq_char = s.chars.tally.select {|_k, v| v == 1}.first
  if first_uniq_char
    return s.index(first_uniq_char[0])
  else
    -1
  end
end
# @lc code=end

