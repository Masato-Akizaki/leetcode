#
# @lc app=leetcode id=463 lang=ruby
#
# [463] Island Perimeter
#

# @lc code=start
# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  perimeter = 0
  pre_grid_bits = 0
  grid.each do |array|
    island_num = array.count(1)
    break if island_num == 0 && perimeter > 0

    y_shared_lines = array.map.with_index{|c, i| c + array[i+1].to_i}.count(2)

    grid_bits = array.join.to_i(2)
    x_shared_lines = (pre_grid_bits & grid_bits).to_s(2).count('1')
    pre_grid_bits = grid_bits

    perimeter += (4 * island_num) - (2 * y_shared_lines) - (2 * x_shared_lines)
  end
  perimeter
end
# @lc code=end

