#
# @lc app=leetcode id=1317 lang=ruby
#
# [1317] Convert Integer to the Sum of Two No-Zero Integers
#

# @lc code=start
# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
    a = 0
    b = n
    while a.to_s.include?('0') || b.to_s.include?('0')
        a += 1
        b -= 1
    end
    [a, b]
end
# @lc code=end