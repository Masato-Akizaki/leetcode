#
# @lc app=leetcode id=1640 lang=ruby
#
# [1640] Check Array Formation Through Concatenation
#

# @lc code=start
# @param {Integer[]} arr
# @param {Integer[][]} pieces
# @return {Boolean}
def can_form_array(arr, pieces)
    pieces.all? {|p| "/#{arr.join('/')}/".include?("/#{p.join('/')}/")}
end
# @lc code=end