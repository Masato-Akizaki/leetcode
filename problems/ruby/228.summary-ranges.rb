#
# @lc app=leetcode id=228 lang=ruby
#
# [228] Summary Ranges
#

# @lc code=start
# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if nums.empty?
  res = []
  curr = [nums[0]]
  for i in 1..nums.length-1 do
    if nums[i] - nums[i-1] == 1
      curr << nums[i] 
    else
      curr[0] != curr[-1] ? res << "#{curr[0]}->#{curr[-1]}" : res << "#{curr[0]}"
      curr = [nums[i]]
    end
  end
  curr[0] != curr[-1] ? res << "#{curr[0]}->#{curr[-1]}" : res << "#{curr[0]}"
  res
end
# @lc code=end

