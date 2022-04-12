#
# @lc app=leetcode id=1491 lang=ruby
#
# [1491] Average Salary Excluding the Minimum and Maximum Salary
#

# @lc code=start
# @param {Integer[]} salary
# @return {Float}
def average(salary)
    salary.sort[1..-2].sum(0.0) / (salary.length - 2)
end
# @lc code=end