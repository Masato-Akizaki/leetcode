#
# @lc app=leetcode id=2465 lang=ruby
#
# [2465] Number of Distinct Averages
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def distinct_averages(nums)
  avgs = []
  nums.sort!
  while nums.length > 0 do
      avgs << (nums.shift + nums.pop) / 2.0
  end
  avgs.uniq.length
end
# @lc code=end

