#
# @lc app=leetcode id=821 lang=ruby
#
# [821] Shortest Distance to a Character
#

# @lc code=start
# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  shortest_distance = []
  c_indexs = s.chars.each_index.select{|i| s[i] == c}
  s.chars.each_index do |i|
    shortest_distance << c_indexs.map{|c_i| (i - c_i).abs}.min
  end
  shortest_distance
end
# @lc code=end

