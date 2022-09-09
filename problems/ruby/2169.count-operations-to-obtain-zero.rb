#
# @lc app=leetcode id=2169 lang=ruby
#
# [2169] Count Operations to Obtain Zero
#

# @lc code=start
# @param {Integer} num1
# @param {Integer} num2
# @return {Integer}
def count_operations(num1, num2)
    count = 0
    while num1 > 0 && num2 > 0
        if num1 >= num2
            num1 -= num2 
        else
            num2 -= num1
        end
        count += 1
    end
    count
end
# @lc code=end