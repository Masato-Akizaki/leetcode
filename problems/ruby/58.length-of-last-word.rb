#
# @lc app=leetcode id=58 lang=ruby
#
# [58] Length of Last Word
#

# @lc code=start
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  return 0 if s.split(" ").empty?
  s.split(" ")[-1].length
end
# @lc code=end

