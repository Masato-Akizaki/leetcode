#
# @lc app=leetcode id=748 lang=ruby
#
# [748] Shortest Completing Word
#

# @lc code=start
# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
  completing_words = []
  letters = license_plate.gsub(/[\d]|[\s]/, "").downcase.chars.tally
  words.each do |word|
    word_hash = word.chars.tally
    completing_words << word if letters.all? {|k,v| word_hash[k] && word_hash[k] >= v}
  end
  min_len = completing_words.map {|a| a.length}.min
  completing_words.find{|x| x.length == min_len}
end
# @lc code=end

