#
# @lc app=leetcode id=1207 lang=ruby
#
# [1207] Unique Number of Occurrences
#

# @lc code=start
# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
    arr.tally.values.uniq.length == arr.uniq.length
end

# @lc code=end