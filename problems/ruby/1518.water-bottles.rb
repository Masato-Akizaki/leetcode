#
# @lc app=leetcode id=1518 lang=ruby
#
# [1518] Water Bottles
#

# @lc code=start
# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
    max_bottles = num_bottles
    empty_bottles = 0
    while num_bottles > 0 || empty_bottles  > num_exchange do
        empty_bottles += num_bottles
        num_bottles = empty_bottles / num_exchange
        empty_bottles %= num_exchange
        max_bottles += num_bottles
    end
    max_bottles
end
# @lc code=end