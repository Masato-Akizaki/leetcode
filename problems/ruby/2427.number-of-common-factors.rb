#
# @lc app=leetcode id=2427 lang=ruby
#
# [2427] Number of Common Factors
#

# @lc code=start
# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def common_factors(a, b)
    count = 0
    [*1..([a, b].min / 2)].each do |i|
        count += 1 if a % i == 0 && b % i == 0
    end
    count += 1 if a % b == 0
    count
end
# @lc code=end