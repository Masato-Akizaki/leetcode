#
# @lc app=leetcode id=57 lang=ruby
#
# [57] Insert Interval
#

# @lc code=start
# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  intervals << new_interval
  intervals.sort! {|a,b| a[0] <=> b[0]}
  result = [intervals[0]]
  intervals.each do |i|
      if i[0] >= result.last[0] && i[0] <= result.last[1] && i[1] > result.last[1]
          result.last[1] = i[1]
      elsif i[0] > result.last[1]
          result << i
      end
  end
  result
end
# @lc code=end
