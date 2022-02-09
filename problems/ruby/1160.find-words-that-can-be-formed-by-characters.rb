#
# @lc app=leetcode id=1160 lang=ruby
#
# [1160] Find Words That Can Be Formed by Characters
#

# @lc code=start
# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  ans = []
  hash = chars.chars.tally
  words.each do |word|
    ans << word if word.chars.tally.all?{|c, v| v <= hash[c].to_i}
  end
  ans.map{|x| x.length}.sum
end
# @lc code=end

