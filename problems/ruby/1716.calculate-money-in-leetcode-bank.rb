#
# @lc app=leetcode id=1716 lang=ruby
#
# [1716] Calculate Money in Leetcode Bank
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def total_money(n)
    w = n / 7
    d = n % 7
    i = 0
    money = 0
    while i < w
        money += [*i+1..i+7].sum
        i += 1
    end
    money += [*i+1..i+d].sum
end
# @lc code=end