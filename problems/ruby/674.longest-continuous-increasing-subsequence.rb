#
# @lc app=leetcode id=674 lang=ruby
#
# [674] Longest Continuous Increasing Subsequence
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  subsequence = []
  longest_count = 0
  nums.each do |n|
    if subsequence.last && n <= subsequence.last
      longest_count = [subsequence.length, longest_count].max
      subsequence = []
    end
    subsequence << n if subsequence.empty? or n > subsequence.last
  end
  [subsequence.length, longest_count].max
end
# @lc code=end

