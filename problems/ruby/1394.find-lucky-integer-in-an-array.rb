#
# @lc app=leetcode id=1394 lang=ruby
#
# [1394] Find Lucky Integer in an Array
#

# @lc code=start
# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  arr.tally.select{|k, v| k == v}.keys.max || -1
end
# @lc code=end