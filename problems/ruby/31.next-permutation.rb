#
# @lc app=leetcode id=31 lang=ruby
#
# [31] Next Permutation
#

# @lc code=start
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  i = nums.size - 2

  while i >= 0 && nums[i] >= nums[i + 1] do
      i -= 1
  end
  
  if i >= 0
      j = nums.size - 1
      while j >= 0 && nums[j] <= nums[i]
          j -= 1
      end
      swap(nums, i, j)
  end
  reverse(nums, i + 1)
end

private

def reverse(nums, start)
  i = start
  j = nums.size - 1
  while (i < j)
      swap(nums, i, j)
      i += 1
      j -= 1
  end
end

def swap(nums, i, j)
  temp = nums[i]
  nums[i] = nums[j]
  nums[j] = temp
end
# @lc code=end

