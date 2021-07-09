#
# @lc app=leetcode id=167 lang=ruby
#
# [167] Two Sum II - Input array is sorted
#

# @lc code=start
# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  hash = {}
  numbers.each_with_index do |n, i|
    return [hash[target - n] + 1, i + 1] if hash[target - n]
    hash[n] = i
  end
end
# @lc code=end

