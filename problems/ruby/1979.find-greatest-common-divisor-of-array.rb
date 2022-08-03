#
# @lc app=leetcode id=1979 lang=ruby
#
# [1979] Find Greatest Common Divisor of Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_gcd(nums)
    max = nums.max
    min = nums.min
    return min if max % min == 0
    [*1..min/2].reverse.each do |i|
        return i if max % i == 0 && min % i == 0
    end
end
# @lc code=end