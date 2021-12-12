#
# @lc app=leetcode id=868 lang=ruby
#
# [868] Binary Gap
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def binary_gap(n)
  binary = n.to_s(2)
  return 0 if binary.count("1") <= 1
  
  indexs = []
  gaps = []

  binary.chars.each_with_index do |c, i|
    indexs << i if c == "1"
  end

  indexs.each_cons(2){|a,b| gaps << b - a}
  gaps.max
end
# @lc code=end

