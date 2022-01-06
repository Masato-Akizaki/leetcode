#
# @lc app=leetcode id=953 lang=ruby
#
# [953] Verifying an Alien Dictionary
#

# @lc code=start
# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  arr = []
  words.each do |word|
    str = ""
    word.chars do |c|
      str += (order.index(c) + 97).chr
    end
    arr << str
    return false if arr != arr.sort
  end
  true
end
# @lc code=end

"["kuvp","q"]\n"ngxlkthsjuoqcpavbfdermiywz""