#
# @lc app=leetcode id=1374 lang=ruby
#
# [1374] Generate a String With Characters That Have Odd Counts
#

# @lc code=start
# @param {Integer} n
# @return {String}
def generate_the_string(n)
    n.even? ? 'a' * (n-1) + 'b' : 'a' * n
end
# @lc code=end