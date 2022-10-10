#
# @lc app=leetcode id=2319 lang=ruby
#
# [2319] Check if Matrix Is X-Matrix
#

# @lc code=start
# @param {Integer[][]} grid
# @return {Boolean}
def check_x_matrix(grid)
    grid.each_with_index do |r, i|
        return false if r[i] == 0 || r[r.length-1-i] == 0
        if grid.length.odd? && i == grid.length / 2
            return false if r.count(0) != r.length - 1
        else
            return false if r.count(0) != r.length - 2
        end
    end
    true
end
# @lc code=end