#
# @lc app=leetcode id=205 lang=ruby
#
# [205] Isomorphic Strings
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  s_chars = s.chars.uniq
  t_chars = t.chars.uniq
  array = []
  return false if s_chars.length != t_chars.length
  s.chars.each do |c|
    i = s_chars.index(c)
    array << t_chars[i]
  end
  array.join == t
end
# @lc code=end

