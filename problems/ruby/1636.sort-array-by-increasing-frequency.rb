#
# @lc app=leetcode id=1636 lang=ruby
#
# [1636] Sort Array by Increasing Frequency
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
    array = []
    nums.tally.sort_by{|x,y| [y, -x]}.each do |n|
        array += [n[0]] * n[1] 
    end
    array
end
# @lc code=end