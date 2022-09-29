#
# @lc app=leetcode id=2264 lang=ruby
#
# [2264] Largest 3-Same-Digit Number in String
#

# @lc code=start
# @param {String} num
# @return {String}
def largest_good_integer(num)
    nums = []
    num.chars.each_cons(3) do |n|
       nums << n.join  if n.uniq.length == 1
    end
    return "" if nums.empty?
    nums.max
end
# @lc code=end