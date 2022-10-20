#
# @lc app=leetcode id=2373 lang=ruby
#
# [2373] Largest Local Values in a Matrix
#

# @lc code=start
# @param {Integer[][]} grid
# @return {Integer[][]}
def largest_local(grid)
    matrix = []
    grid.each_cons(3) do |n|
        row = []
        [*0...grid.length-2].each do |i|
             row << n.map{|x| x[i..i+2]}.flatten.max
        end
        matrix << row
    end
    matrix
end
# @lc code=end