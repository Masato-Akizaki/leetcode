#
# @lc app=leetcode id=2231 lang=ruby
#
# [2231] Largest Number After Digit Swaps by Parity
#

# @lc code=start
# @param {Integer} num
# @return {Integer}
def largest_integer(num)
  res = []
  evens = num.digits.select{|x| x.even?}.sort
  odds = num.digits.select{|x| x.odd?}.sort
  num.digits.reverse.each do |n|
      if n.even?
          res << evens.pop
      else
          res << odds.pop
      end
  end
  res.join.to_i
end
# @lc code=end