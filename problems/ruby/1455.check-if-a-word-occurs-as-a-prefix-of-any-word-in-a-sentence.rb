#
# @lc app=leetcode id=1455 lang=ruby
#
# [1455] Check If a Word Occurs As a Prefix of Any Word in a Sentence
#

# @lc code=start
# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
    sentence.split(" ").each_with_index do |string, i|
        return i + 1 if string[0...search_word.length] == search_word
    end
    -1
end
# @lc code=end