#
# @lc app=leetcode id=1897 lang=ruby
#
# [1897] Redistribute Characters to Make All Strings Equal
#

# @lc code=start
# @param {String[]} words
# @return {Boolean}
def make_equal(words)
    hash = Hash.new(0)
    words.each do |word|
        hash.merge!(word.chars.tally){|k, v1, v2| v1 + v2}
    end
    hash.values.all?{|v| v % words.length == 0}
end
# @lc code=end