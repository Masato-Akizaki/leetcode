#
# @lc app=leetcode id=892 lang=ruby
#
# [892] Surface Area of 3D Shapes
#

# @lc code=start
# @param {Integer[][]} grid
# @return {Integer}
def surface_area(grid)
  n, res = grid.length, 0
    for i in 0...n do
      for j in 0...n do
        res += 2 + grid[i][j] * 4 if grid[i][j] > 0
        res -= [grid[i][j], grid[i - 1][j]].min * 2 if i > 0
        res -= [grid[i][j], grid[i][j - 1]].min * 2 if j > 0
      end
    end
    return res
end
# @lc code=end

