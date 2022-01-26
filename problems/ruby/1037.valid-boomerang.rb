#
# @lc app=leetcode id=1037 lang=ruby
#
# [1037] Valid Boomerang
#

# @lc code=start
# @param {Integer[][]} points
# @return {Boolean}
def is_boomerang(points)
  pair1, pair2, pair3 = points
  (pair1[0] - pair2[0]) * (pair3[1] - pair2[1]) != (pair3[0] - pair2[0]) * (pair1[1] - pair2[1])
end
# @lc code=end

