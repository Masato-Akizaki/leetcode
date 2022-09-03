#
# @lc app=leetcode id=2138 lang=ruby
#
# [2138] Divide a String Into Groups of Size k
#

# @lc code=start
# @param {String} s
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
    strings = []
    s.split("").each_slice(k){|a| strings << a.join}
    strings[-1] += fill * (k - strings[-1].length)  if strings[-1].length != k
    strings
end
# @lc code=end