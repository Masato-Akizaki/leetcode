#
# @lc app=leetcode id=2160 lang=ruby
#
# [2160] Minimum Sum of Four Digit Number After Splitting Digits
#

# @lc code=start
# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
    digits = num.to_s.split("").sort
    (digits[0] + digits[2]).to_i + (digits[1] + digits[3]).to_i
end
# @lc code=end