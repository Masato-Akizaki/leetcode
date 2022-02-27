#
# @lc app=leetcode id=1295 lang=ruby
#
# [1295] Find Numbers with Even Number of Digits
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    nums.count{|x| x.to_s.length.even? }
end
# @lc code=end