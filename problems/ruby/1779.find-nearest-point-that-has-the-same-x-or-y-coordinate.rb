#
# @lc app=leetcode id=1779 lang=ruby
#
# [1779] Find Nearest Point That Has the Same X or Y Coordinate
#

# @lc code=start
# @param {Integer} x
# @param {Integer} y
# @param {Integer[][]} points
# @return {Integer}
def nearest_valid_point(x, y, points)
    min_i = -1
    d = 10 ** 4 + 1
    points.each_with_index do |point, i|
        di = (point[1] - y).abs if point[0] == x
        di = (point[0] - x).abs if point[1] == y
        if di && di < d
            min_i = i
            d = di
        end
    end
    min_i
end
# @lc code=end