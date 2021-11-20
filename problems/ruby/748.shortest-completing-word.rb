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
  letters = license_plate.gsub(/[\d]|[\s]/, "").downcase.chars.tally.to_a
  words.each do |word|
    # p word
    # p letters
    # p word.chars.tally.to_a
    # p (letters - word.chars.tally.to_a)
    # p (letters - word.chars.tally.to_a).to_h
    completing_words << word if (letters - word.chars.tally.to_a).empty?
  end
  # p completing_words
  p min_len = completing_words.map {|a| a.length}.min
  p completing_words.find{|x| x.length == min_len}
end
# @lc code=end

""GrC8950"\n["measure","other","every","base","according","level","meeting","none","marriage","rest"]"