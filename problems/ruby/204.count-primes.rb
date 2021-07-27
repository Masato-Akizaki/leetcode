#
# @lc app=leetcode id=204 lang=ruby
#
# [204] Count Primes
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def count_primes(n)
  return 0 if n <= 2

  prime = [2]
  [*3..n-1].each do |i|
    is_prime = true
    prime.each do |j|
      break if j > i**0.5 
      break is_prime = false if i % j == 0
    end
    prime << i if is_prime
  end
  prime.count
end
# @lc code=end

999983