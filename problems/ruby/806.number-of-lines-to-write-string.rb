#
# @lc app=leetcode id=806 lang=ruby
#
# [806] Number of Lines To Write String
#

# @lc code=start
# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
ALPHABET = [*'a'..'z']

def number_of_lines(widths, s)
  lines = 1
  pixels = 0
  s.each_char do |c|
    wide = widths[ALPHABET.index(c)]
    if pixels + wide <= 100
      pixels += wide 
    else
      pixels = wide
      lines += 1
    end
  end
  [lines, pixels]
end
# @lc code=end

