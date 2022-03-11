#
# @lc app=leetcode id=1351 lang=ruby
#
# [1351] Count Negative Numbers in a Sorted Matrix
#

# @lc code=start
# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
    count = 0
    grid.each do |row|
        count += row.count{|x| x < 0}
    end
    count
end
# @lc code=end