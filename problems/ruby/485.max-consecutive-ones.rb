#
# @lc app=leetcode id=485 lang=ruby
#
# [485] Max Consecutive Ones
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  # return 0 if nums.max == 0
  # nums.join.split('0').max.length

  max = 0
  tmp = 0
  nums.each do |num|
    if num == 1
      tmp += 1;
      max = [max,tmp].max
    else
      tmp = 0
    end
  end
  return max
end
# @lc code=end

