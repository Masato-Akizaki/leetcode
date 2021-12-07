#
# @lc app=leetcode id=844 lang=ruby
#
# [844] Backspace String Compare
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  while s.include?('#') || t.include?('#')
    s_i = s.index('#')
    s.slice!(s_i) if s_i && s_i == 0
    s.slice!(s_i-1..s_i) if s_i && s_i > 0

    t_i = t.index('#')
    t.slice!(t_i) if t_i && t_i == 0
    t.slice!(t_i-1..t_i) if t_i && t_i > 0
  end
  s == t
end
# @lc code=end

