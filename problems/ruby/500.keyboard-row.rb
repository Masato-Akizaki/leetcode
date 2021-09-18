#
# @lc app=leetcode id=500 lang=ruby
#
# [500] Keyboard Row
#

# @lc code=start
# @param {String[]} words
# @return {String[]}
def find_words(words)
  row = {1 => 'qwertyuiop', 2 => 'asdfghjkl', 3 => 'zxcvbnm'}
  res = []
  words.each do |w|
    first_char_row = row.select{ |_, v| v.include?(w[0].downcase)}.keys.first
    same_raw_chars = 0
    w.downcase.each_char do |c|
      break unless row[first_char_row].include?(c)
      same_raw_chars += 1
    end
    res << w if w.length == same_raw_chars
  end
  res
end
# @lc code=end

