#
# @lc app=leetcode id=1232 lang=ruby
#
# [1232] Check If It Is a Straight Line
#

# @lc code=start
# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
    return true if coordinates.length == 2
    coordinates.each_cons(3) do |a, b, c|
      return false if (b[0] - a[0]) * (c[1] - a[1]) !=  (c[0] - a[0]) * (b[1] - a[1])
    end
    return true
end
# @lc code=end