#
# @lc app=leetcode id=2367 lang=ruby
#
# [2367] Number of Arithmetic Triplets
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} diff
# @return {Integer}
def arithmetic_triplets(nums, diff)
    count = 0
    nums.each do |n|
        count += 1 if nums.map{|x| (x - n).abs}.select{|x| x == diff}.length == 2
    end
    count
end
# @lc code=end