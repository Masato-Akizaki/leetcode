#
# @lc app=leetcode id=63 lang=ruby
#
# [63] Unique Paths II
#

# @lc code=start
# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
  m = obstacle_grid.size
  n = obstacle_grid.first.size
  row = [0] * n
  for i in (0...n)
    if obstacle_grid.first[i] == 1
      break
    else
      row[i] = 1
    end
  end
  for i in (1...m)
    for j in (0...n)
      row[j] = obstacle_grid[i][j] == 0 ? (j > 0 ? row[j - 1] : 0) + row[j] : 0
    end
  end
  row.last
end
# @lc code=end

