#
# @lc app=leetcode id=1089 lang=ruby
#
# [1089] Duplicate Zeros
#

# @lc code=start
# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  i = 0
  while i < arr.length do
    if arr[i] == 0
      arr.insert(i+1, 0)
      arr.pop
      i += 1
    end
    i += 1
  end
end
# @lc code=end

