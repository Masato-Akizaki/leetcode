#
# @lc app=leetcode id=1266 lang=ruby
#
# [1266] Minimum Time Visiting All Points
#

# @lc code=start
# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
  time = 0
  points.each_cons(2) do |p1, p2|
      time += [(p1[0] - p2[0]).abs, (p1[1] - p2[1]).abs].max
  end
  time
end
# @lc code=end