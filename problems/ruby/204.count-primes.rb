#
# @lc app=leetcode id=204 lang=ruby
#
# [204] Count Primes
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def count_primes(n)
  prime = [true] * n
  count = 0

  [*2..n].each do |i|
    if prime[i] == true
      count += 1
      j = 2
      while i * j < n
        prime[i*j] = false
        j += 1
      end
    end
  end
  count
end
# @lc code=end

