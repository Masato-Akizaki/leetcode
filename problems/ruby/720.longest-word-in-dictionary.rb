#
# @lc app=leetcode id=720 lang=ruby
#
# [720] Longest Word in Dictionary
#

# @lc code=start
# @param {String[]} words
# @return {String}
def longest_word(words)
  words.sort!
  
  chars = []
  longest_word = ""

  words.each do |word|
    if word.length == 1 || chars.include?(word[0..-2])
      chars << word
      longest_word = word if word.length > longest_word.length
    end
  end
  
  longest_word
end
# @lc code=end

