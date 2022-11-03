#
# @lc app=leetcode id=2441 lang=ruby
#
# [2441] Largest Positive Integer That Exists With Its Negative
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_max_k(nums)
    hash = nums.uniq.map(&:abs).tally
    if hash.any?{|_,v| v == 2}
        return hash.select{|_,v| v == 2}.max_by{|x| x[0]}[0]
    else
        return -1
    end
end
# @lc code=end