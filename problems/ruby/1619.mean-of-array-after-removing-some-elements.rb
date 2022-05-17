#
# @lc app=leetcode id=1619 lang=ruby
#
# [1619] Mean of Array After Removing Some Elements
#

# @lc code=start
# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
    len = arr.length
    i = len / 20
    arr.sort[i..(len-1-i)].sum / arr.sort[i..(len-1-i)].length.to_f
end
# @lc code=end