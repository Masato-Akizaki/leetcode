#
# @lc app=leetcode id=55 lang=ruby
#
# [55] Jump Game
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  max_jump = 0
  nums.size.times do |i|
    return false if max_jump < i
    max_jump = [max_jump, i + nums[i]].max
  end
  return true
end
# @lc code=end

