#
# @lc app=leetcode id=1784 lang=ruby
#
# [1784] Check if Binary String Has at Most One Segment of Ones
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def check_ones_segment(s)
    indexs = s.chars.each_index.select{|i| s[i].to_i == 1}
    indexs == [*0..indexs.max]
end
# @lc code=end