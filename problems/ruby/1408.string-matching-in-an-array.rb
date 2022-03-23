#
# @lc app=leetcode id=1408 lang=ruby
#
# [1408] String Matching in an Array
#

# @lc code=start
# @param {String[]} words
# @return {String[]}
def string_matching(words)
  substrings = []
  words.each do |w1|
      words.each do |w2|
          if w1 != w2 && w2.include?(w1)
              substrings << w1
              break
          end
      end
  end
  substrings.uniq
end
# @lc code=end