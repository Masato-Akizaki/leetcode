#
# @lc app=leetcode id=1103 lang=ruby
#
# [1103] Distribute Candies to People
#

# @lc code=start
# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  arr = [0] * num_people
  i = 0
  distribution = 1
  while candies > 0 do
    distribution = candies if candies < distribution
    candies -= distribution
    arr[i % num_people] += distribution
    distribution += 1
    i += 1
  end
  arr
end
# @lc code=end

