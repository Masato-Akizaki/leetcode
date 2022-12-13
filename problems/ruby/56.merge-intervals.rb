#
# @lc app=leetcode id=56 lang=ruby
#
# [56] Merge Intervals
#

# @lc code=start
# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals.sort!

  res = [intervals[0]]
  l, r = res[0]

  (intervals.size - 1).times do |i|
    if r >= intervals[i+1][0]
      r = [r, intervals[i+1][1]].max
      res[-1][1] = r
    else
      l, r = intervals[i+1]
      res << [l, r]
    end
  end
  res
end
# @lc code=end

