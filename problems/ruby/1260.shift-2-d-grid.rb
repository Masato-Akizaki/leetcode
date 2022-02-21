#
# @lc app=leetcode id=1260 lang=ruby
#
# [1260] Shift 2D Grid
#

# @lc code=start
# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
  grid.flatten.rotate(-k).each_slice(grid[0].size).to_a
end
# @lc code=end