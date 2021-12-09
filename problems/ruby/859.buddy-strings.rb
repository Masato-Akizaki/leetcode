#
# @lc app=leetcode id=859 lang=ruby
#
# [859] Buddy Strings
#

# @lc code=start
# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  index = []
  count = Hash.new(0)
  for i in 0..s.length - 1 do
    index << i if s[i] != goal[i]
    count[s[i]] += 1
  end
  return true if index.empty? && count.values.max >= 2
  return false if index.empty? || index.length > 2 || index.length < 2
  s_i, s_j = s[index[0]], s[index[1]]
  s[index[0]], s[index[1]] = s_j, s_i
  s == goal
end
# @lc code=end

