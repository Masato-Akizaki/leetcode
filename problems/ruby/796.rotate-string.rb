#
# @lc app=leetcode id=796 lang=ruby
#
# [796] Rotate String
#

# @lc code=start
# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  i = 0
  while i < s.length
    char = s.slice!(0)
    s += char
    i += 1
    return true if s == goal
  end
  return false
end
# @lc code=end

