#
# @lc app=leetcode id=1725 lang=ruby
#
# [1725] Number Of Rectangles That Can Form The Largest Square
#

# @lc code=start
# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
    rectangles.map{|r| r.min}.tally.sort.last[1]
end
# @lc code=end