#
# @lc app=leetcode id=1502 lang=ruby
#
# [1502] Can Make Arithmetic Progression From Sequence
#

# @lc code=start
# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
    return true if arr.length == 2
    arr.sort.each_cons(3) do |x|
        return false if x[1] - x[0] != x[2] - x[1]
    end
    true
end
# @lc code=end