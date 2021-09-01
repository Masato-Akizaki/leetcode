#
# @lc app=leetcode id=409 lang=ruby
#
# [409] Longest Palindrome
#

# @lc code=start
# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  length = 0
  chars_len = s.chars.tally
  length += chars_len.values.select{ |l| l.even? }.sum
  length += chars_len.values.select{ |l| l.odd? }.map{ |l| l - 1 }.sum
  length += 1 unless chars_len.values.select{ |l| l.odd? }.empty?
  length
end
# @lc code=end

