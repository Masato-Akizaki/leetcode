#
# @lc app=leetcode id=258 lang=ruby
#
# [258] Add Digits
#

# @lc code=start
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  return num if num < 10
  num = (num.to_s.chars.map { |x| x.to_i }).sum while num >= 10
  num
end
# @lc code=end

