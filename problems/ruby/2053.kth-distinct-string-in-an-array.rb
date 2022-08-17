#
# @lc app=leetcode id=2053 lang=ruby
#
# [2053] Kth Distinct String in an Array
#

# @lc code=start
# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
    strings = arr.tally.select{|k,v| v == 1}.keys
    return "" if strings.length < k
    strings[k-1]
end
# @lc code=end