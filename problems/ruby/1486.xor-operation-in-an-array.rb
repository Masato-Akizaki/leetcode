#
# @lc app=leetcode id=1486 lang=ruby
#
# [1486] XOR Operation in an Array
#

# @lc code=start
# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
    arr = []
    for i in 0...n do
        arr << start + (i * 2)
    end
    arr.inject(:^)
end
# @lc code=end