#
# @lc app=leetcode id=2335 lang=ruby
#
# [2335] Minimum Amount of Time to Fill Cups
#

# @lc code=start
# @param {Integer[]} amount
# @return {Integer}
def fill_cups(amount)
    count = 0
    while amount.sort.uniq[-1] != 0 do
        amount.sort!
        amount[-1] -= 1 if amount[-1] > 0
        amount[-2] -= 1 if amount[-2] > 0
        count += 1
    end
    count
end
# @lc code=end