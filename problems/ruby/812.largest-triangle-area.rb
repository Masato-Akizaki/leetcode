#
# @lc app=leetcode id=812 lang=ruby
#
# [812] Largest Triangle Area
#

# @lc code=start
# @param {Integer[][]} points
# @return {Float}
def largest_triangle_area(points)
  points.combination(3).map{|((ax,ay),(bx,by),(cx,cy))| ((ax*(by-cy)+bx*(cy-ay)+cx*(ay-by)).fdiv(2)).abs}.max
end
# @lc code=end

