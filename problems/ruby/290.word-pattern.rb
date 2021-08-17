#
# @lc app=leetcode id=290 lang=ruby
#
# [290] Word Pattern
#

# @lc code=start
# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  hash = {}
  pattern = pattern.chars
  s = s.split(" ")
  return false if pattern.length != s.length
  pattern.each_with_index do |p, i|
    return false if hash[p] && hash[p] != s[i]
    return false if hash.has_value?(s[i]) && hash.key(s[i]) != p
    hash[p] = s[i] unless hash[p]
  end
  true
end
# @lc code=end

