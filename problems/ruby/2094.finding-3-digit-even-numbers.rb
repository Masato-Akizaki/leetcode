#
# @lc app=leetcode id=2094 lang=ruby
#
# [2094] Finding 3-Digit Even Numbers
#

# @lc code=start
# @param {Integer[]} digits
# @return {Integer[]}
def find_even_numbers(digits)
    h = digits.tally
    100.step(999, 2).filter { |x| x.digits.tally.all? { |d, c| h.fetch(d, 0) >= c } }
end
# @lc code=end