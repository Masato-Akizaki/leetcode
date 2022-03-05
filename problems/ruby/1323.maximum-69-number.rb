#
# @lc app=leetcode id=1323 lang=ruby
#
# [1323] Maximum 69 Number
#

# @lc code=start
# @param {Integer} num
# @return {Integer}
def maximum69_number(num)
    num_str = num.to_s
    return num unless num_str.include?("6")
    num_str[num.to_s.index("6")] = "9"
    num_str.to_i
end
# @lc code=end