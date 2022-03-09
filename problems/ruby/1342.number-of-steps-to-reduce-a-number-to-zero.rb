#
# @lc app=leetcode id=1342 lang=ruby
#
# [1342] Number of Steps to Reduce a Number to Zero
#

# @lc code=start
# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
    step = 0
    while num > 0 do
        num.even? ? num /= 2 : num -= 1
        step += 1
    end
    step
end
# @lc code=end