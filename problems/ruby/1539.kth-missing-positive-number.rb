#
# @lc app=leetcode id=1539 lang=ruby
#
# [1539] Kth Missing Positive Number
#

# @lc code=start
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
    ([*1..2000] - arr)[k-1]
end
# @lc code=end