#
# @lc app=leetcode id=728 lang=ruby
#
# [728] Self Dividing Numbers
#

# @lc code=start
# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  self_dividing_numbers = []
  while left <= right
    if left.to_s.include?('0')
      left += 1
    else
      self_dividing_numbers << left if left.to_s.chars.all? {|n| left % n.to_i == 0 }
      left += 1
    end
  end
  self_dividing_numbers
end
# @lc code=end

