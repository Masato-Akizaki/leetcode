#
# @lc app=leetcode id=1496 lang=ruby
#
# [1496] Path Crossing
#

# @lc code=start
# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
    points = [[0,0]]
    path.each_char do |c|
        point = points.last
        point = [point[0], point[1] + 1] if c == 'N'
        point = [point[0], point[1] - 1] if c == 'S'
        point = [point[0] + 1, point[1]] if c == 'E'
        point = [point[0] - 1, point[1]] if c == 'W'
        return true if points.include?(point)
        points << point
    end
    false
end
# @lc code=end