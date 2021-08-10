#
# @lc app=leetcode id=242 lang=ruby
#
# [242] Valid Anagram
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s.chars.tally == t.chars.tally
end
# @lc code=end

