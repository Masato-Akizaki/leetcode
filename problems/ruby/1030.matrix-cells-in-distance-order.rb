#
# @lc app=leetcode id=1030 lang=ruby
#
# [1030] Matrix Cells in Distance Order
#

# @lc code=start
# @param {Integer} rows
# @param {Integer} cols
# @param {Integer} r_center
# @param {Integer} c_center
# @return {Integer[][]}
def all_cells_dist_order(rows, cols, r_center, c_center)
  hash = Hash.new()
  for i in 0...rows do
    for j in 0...cols do
      hash[[i, j]] = (r_center - i).abs + (c_center - j).abs
    end
  end
  hash.sort_by{|k,v| v}.to_h.keys
end
# @lc code=end

