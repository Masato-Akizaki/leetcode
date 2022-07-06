#
# @lc app=leetcode id=1848 lang=ruby
#
# [1848] Minimum Distance to the Target Element
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} start
# @return {Integer}
def get_min_distance(nums, target, start)
    indexs = []
    nums.each_with_index do |n, i|
        indexs << i if n == target
    end
    indexs.map{|x| (x-start).abs}.min
end
# @lc code=end