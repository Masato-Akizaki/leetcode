#
# @lc app=leetcode id=1869 lang=ruby
#
# [1869] Longer Contiguous Segments of Ones than Zeros
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def check_zero_ones(s)
    if s.split("0").max && s.split("1").max
        return s.split("0").max.length > s.split("1").max.length
    elsif s.include?("1")
        return true
    else
        return false
    end
end
# @lc code=end