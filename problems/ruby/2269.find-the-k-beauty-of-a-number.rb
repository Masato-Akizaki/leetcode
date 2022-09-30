#
# @lc app=leetcode id=2269 lang=ruby
#
# [2269] Find the K-Beauty of a Number
#

# @lc code=start
# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def divisor_substrings(num, k)
    count = 0
    num.to_s.chars.each_cons(k) do |n|
        count += 1 if n.join.to_i > 0 && num % n.join.to_i == 0
    end
    count
end
# @lc code=end