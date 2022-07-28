#
# @lc app=leetcode id=1957 lang=ruby
#
# [1957] Delete Characters to Make Fancy String
#

# @lc code=start
# @param {String} s
# @return {String}
def make_fancy_string(s)
    s.chars.slice_when{ |a, b| a != b }.to_a.map{ |arr| arr.length >= 3 ? arr = arr[0] * 2 : arr }.flatten.join
end
# @lc code=end