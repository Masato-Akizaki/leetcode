#
# @lc app=leetcode id=1952 lang=ruby
#
# [1952] Three Divisors
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def is_three(n)
    count = 0
    [*2..n].each do |i|
        break if i > n*0.5
        count += 1 if n % i == 0
        return false if count > 2
    end
    count += 2
    count == 3
end
# @lc code=end