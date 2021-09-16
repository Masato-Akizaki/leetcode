#
# @lc app=leetcode id=495 lang=ruby
#
# [495] Teemo Attacking
#

# @lc code=start
# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
  total_seconds = 0
  time_series.each_with_index do |t, i|
    total_seconds += duration
    total_seconds -= duration - (t - time_series[i-1]) if i > 0 && t - time_series[i-1] < duration
  end
  total_seconds
end
# @lc code=end

