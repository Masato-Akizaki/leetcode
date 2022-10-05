#
# @lc app=leetcode id=2293 lang=ruby
#
# [2293] Min Max Game
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def min_max_game(nums)
    while nums.length > 1 do
        new_nums = []
        [*0...nums.length].each_slice(2) do |arr|
            new_nums << [nums[arr[0]], nums[arr[1]]].min if (arr[0]/2).even?
            new_nums << [nums[arr[0]], nums[arr[1]]].max if (arr[0]/2).odd?
        end
        nums = new_nums
    end
    nums[0]
end
# @lc code=end