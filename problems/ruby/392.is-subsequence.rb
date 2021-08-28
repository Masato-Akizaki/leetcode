#
# @lc app=leetcode id=392 lang=ruby
#
# [392] Is Subsequence
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  s_arr = s.chars
  t_arr = t.chars
  t_indexs = []
  s_arr.each do |c|
    t_index = t_arr.index(c)
    return false unless t_arr.include?(c)
    return false if t_indexs.last && t_index < t_indexs.last
    t_indexs << t_index
    t_arr[0..t_index] = Array.new(t_index + 1, ".")
  end
  true
end
# @lc code=end

