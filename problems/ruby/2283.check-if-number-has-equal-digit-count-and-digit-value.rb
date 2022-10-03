#
# @lc app=leetcode id=2283 lang=ruby
#
# [2283] Check if Number Has Equal Digit Count and Digit Value
#

# @lc code=start
# @param {String} num
# @return {Boolean}
def digit_count(num)
    [*0...num.length].all?{|i| num.chars.count(i.to_s) == num[i].to_i }
end
# @lc code=end