#
# @lc app=leetcode id=804 lang=ruby
#
# [804] Unique Morse Code Words
#

# @lc code=start
# @param {String[]} words
# @return {Integer}
MORSE_CODE = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
ALPHABET = [*'a'..'z']

def unique_morse_representations(words)
  transformations = []
  words.each do |w|
    transformation = ''
    w.each_char do |c|
      transformation += MORSE_CODE[ALPHABET.index(c)]
    end
    transformations << transformation
  end
  transformations.uniq.length
end
# @lc code=end

