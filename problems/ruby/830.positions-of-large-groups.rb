#
# @lc app=leetcode id=830 lang=ruby
#
# [830] Positions of Large Groups
#

# @lc code=start
# @param {String} s
# @return {Integer[][]}
def large_group_positions(s)
  positions = []
  groups = []
  group = ''
  index = 0
  s.chars.each_with_index do |c, i|
    if i == 0
      group = c
    elsif group[0] == c
      group += c
      groups << [index, group] if i == s.length - 1 
    else
      groups << [index, group]
      group = c
      index = i
    end
  end

  groups.select{|group| group[1].length >= 3}.each do |group|
    positions << [group[0], group[0] + group[1].length - 1]
  end
  positions
end
# @lc code=end

