#
# @lc app=leetcode id=1995 lang=ruby
#
# [1995] Count Special Quadruplets
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def count_quadruplets(nums)
    res = 0
    n = nums.size
    [*0...n].each do |i|
        [*i+1...n].each do |j|
            [*j+1...n].each do |k|
                [*k+1...n].each do |l|
                    res += 1 if nums[i] + nums[j] + nums[k] == nums[l]
                end
            end
        end
    end
    return res
end
# @lc code=end