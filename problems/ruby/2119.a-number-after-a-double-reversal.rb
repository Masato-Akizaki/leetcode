#
# @lc app=leetcode id=2119 lang=ruby
#
# [2119] A Number After a Double Reversal
#

# @lc code=start
# @param {Integer} num
# @return {Boolean}
def is_same_after_reversals(num)
    num.to_s.length ==  num.to_s.reverse.to_i.to_s.length
end
# @lc code=end