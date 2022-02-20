#
# @lc app=leetcode id=1252 lang=ruby
#
# [1252] Cells with Odd Values in a Matrix
#

# @lc code=start
# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(m, n, indices)
  matrix = Array.new(m){Array.new(n){0}}
  indices.each do |i|
    matrix[i[0]].map!{|x| x += 1}
    matrix.map{|r| r[i[1]] += 1}
  end
  matrix.flatten.count{|x| x.odd?}
end
# @lc code=end