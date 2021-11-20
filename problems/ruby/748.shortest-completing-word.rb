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
    judge = []
    word_hash = word.chars.tally
    letters.each do |k,v|
      next judge << false if word_hash[k].nil?
      judge << (word_hash[k] >= v)
    end
    completing_words << word if judge.all?(true)  
  end
  min_len = completing_words.map {|a| a.length}.min
  completing_words.find{|x| x.length == min_len}
end
# @lc code=end

