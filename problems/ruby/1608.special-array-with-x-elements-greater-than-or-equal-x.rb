#
# @lc app=leetcode id=1608 lang=ruby
#
# [1608] Special Array With X Elements Greater Than or Equal X
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def special_array(nums)
    [*1..nums.length].each do |i|
        return i if nums.count{|x| x >= i} == i
    end
    -1
end
# @lc code=end