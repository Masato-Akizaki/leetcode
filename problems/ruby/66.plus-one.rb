#
# @lc app=leetcode id=66 lang=ruby
#
# [66] Plus One
#

# @lc code=start
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  digits = (digits.join.to_i + 1).to_s.split('').map{|x| x.to_i}
  digits
end
# @lc code=end

