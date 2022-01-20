#
# @lc app=leetcode id=1018 lang=ruby
#
# [1018] Binary Prefix Divisible By 5
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean[]}
def prefixes_div_by5(nums)
  answer = []
  base = 0
  nums.each do |x|
    base <<= 1
    base += x
    answer << (base % 5 == 0)
  end
  answer
end
# @lc code=end

