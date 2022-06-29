#
# @lc app=leetcode id=1812 lang=ruby
#
# [1812] Determine Color of a Chessboard Square
#

# @lc code=start
# @param {String} coordinates
# @return {Boolean}
def square_is_white(coordinates)
    x = [*"a".."h"]
    y = [*"1".."8"]
    x.index(coordinates[0]).even? != y.index(coordinates[1]).even?
end
# @lc code=end