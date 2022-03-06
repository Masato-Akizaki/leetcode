#
# @lc app=leetcode id=1331 lang=ruby
#
# [1331] Rank Transform of an Array
#

# @lc code=start
# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
    sorted_arr = arr.uniq.sort
    hash = sorted_arr.zip([*1..sorted_arr.length]).to_h
    arr.map{|x| hash[x]}
end
# @lc code=end