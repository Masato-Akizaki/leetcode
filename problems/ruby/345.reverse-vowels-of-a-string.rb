#
# @lc app=leetcode id=345 lang=ruby
#
# [345] Reverse Vowels of a String
#

# @lc code=start
# @param {String} s
# @return {String}
def reverse_vowels(s)
  string_vowels = []
  vowels_index  = []
  vowels = ['a', 'i', 'u', 'e', 'o', 'A', 'I', 'U', 'E', 'O']
  s.chars.each_with_index do |c, i|
    if vowels.include?(c)
      string_vowels << c
      vowels_index  << i
    end
  end
  string_vowels.reverse!
  for i in 0..string_vowels.length-1 do
    s[vowels_index[i]] = string_vowels[i]
  end
  return s
end
# @lc code=end

