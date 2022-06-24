#
# @lc app=leetcode id=1791 lang=ruby
#
# [1791] Find Center of Star Graph
#

# @lc code=start
# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
    edges.flatten.tally.max{ |x, y| x[1] <=> y[1] }.first
end
# @lc code=end