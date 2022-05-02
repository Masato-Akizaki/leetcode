#
# @lc app=leetcode id=1550 lang=ruby
#
# [1550] Three Consecutive Odds
#

# @lc code=start
# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
    arr.each_cons(3) do |a, b, c|
        return true if [a, b, c].all?(&:odd?)
    end
    false
end
# @lc code=end