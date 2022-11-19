#
# @lc app=leetcode id=18 lang=ruby
#
# [18] 4Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  arr = []
  return arr if nums.length < 4
  nums.sort!

  [*0..nums.length-4].each do |i|
    [*i+1..nums.length-3].each do |j|
      l = j + 1
      k = nums.length - 1

      break if nums[i] + nums[j] + nums[l] + nums[l+1] > target
      next if nums[i] + nums[j] + nums[k-1] + nums[k] < target
      next if (nums[j] == nums[j-1]) && (j > i + 1)

      while l < k
        tmp = nums[i] + nums[j] + nums[k] + nums[l]
        
        if tmp == target
          arr << [nums[i], nums[j], nums[k], nums[l]]
          l += 1
          k -= 1
          
          l += 1 while nums[l] == nums[l-1]
          k -= 1 while nums[k] == nums[k+1]
        elsif tmp > target
          k -= 1
        else
          l += 1
        end
      end
    end
  end
  arr.map(&:sort).uniq
end
# @lc code=end

