#
# @lc app=leetcode id=1013 lang=ruby
#
# [1013] Partition Array Into Three Parts With Equal Sum
#

# @lc code=start
# @param {Integer[]} arr
# @return {Boolean}
def can_three_parts_equal_sum(arr)
  return false if arr.sum % 3 > 0
  n = arr.sum / 3
  sums = []
  sum = 0
  arr.each do |i|
    sum += i
    if sum == n
      sums << sum
      sum = 0
    end
  end
  return true if sums.length > 3 && sums.all?{|x| x == 0}
  return true if n != 0 && sums.length - (sum / n).abs == 3
  sums.length == 3
end
# @lc code=end

