#
# @lc app=leetcode id=64 lang=ruby
#
# [64] Minimum Path Sum
#

# @lc code=start
# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  row = grid.length
  col = grid.first.length
  
  (0...row).each do |i|
    (0...col).each do |j|
      next if (i == 0) && (j == 0)
      
      row_val = (i - 1) < 0 ? grid[i][j-1] : grid[i-1][j]
      col_val = (j - 1) < 0 ? grid[i-1][j]: grid[i][j-1]
      
      grid[i][j] += [row_val, col_val].min    
    end
  end
  
  grid.last.last  
end
# @lc code=end

