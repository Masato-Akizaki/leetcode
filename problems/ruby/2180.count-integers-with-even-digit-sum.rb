#
# @lc app=leetcode id=2180 lang=ruby
#
# [2180] Count Integers With Even Digit Sum
#

# @lc code=start
# @param {Integer} num
# @return {Integer}
def count_even(num)
    count = 0
    [*1..num].each do |n|
        count += 1 if n.digits.sum.even?
    end
    count
end
# @lc code=end