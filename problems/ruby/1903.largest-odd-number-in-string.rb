#
# @lc app=leetcode id=1903 lang=ruby
#
# [1903] Largest Odd Number in String
#

# @lc code=start
# @param {String} num
# @return {String}
def largest_odd_number(num)
    odds = num.chars.map(&:to_i).select(&:odd?)
    return "" if odds.empty?
    num[0..num.rindex(odds.last.to_s)]
end
# @lc code=end