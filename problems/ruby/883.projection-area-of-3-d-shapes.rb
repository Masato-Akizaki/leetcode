#
# @lc app=leetcode id=883 lang=ruby
#
# [883] Projection Area of 3D Shapes
#

# @lc code=start
# @param {Integer[][]} grid
# @return {Integer}
def projection_area(grid)
  hash = Hash.new(0)
  grid.each do |i|
    i.each_with_index do |j, i|
      hash[i] = j if j > hash[i]
    end
  end

  xy = grid.flatten.delete_if{|x| x == 0}.length
  xz = grid.map{|i| i.max}.sum
  yz = hash.values.sum

  return xy + xz + yz
end
# @lc code=end

