#
# @lc app=leetcode id=888 lang=ruby
#
# [888] Fair Candy Swap
#

# @lc code=start
# @param {Integer[]} alice_sizes
# @param {Integer[]} bob_sizes
# @return {Integer[]}
def fair_candy_swap(alice_sizes, bob_sizes)
  dif =  alice_sizes.sum - bob_sizes.sum
  alice_sizes.each do |b|
    return [b, b - dif/2] if bob_sizes.include?(b - dif/2)
  end
end
# @lc code=end

