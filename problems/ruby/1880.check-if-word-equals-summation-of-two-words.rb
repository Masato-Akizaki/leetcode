#
# @lc app=leetcode id=1880 lang=ruby
#
# [1880] Check if Word Equals Summation of Two Words
#

# @lc code=start
# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}
def is_sum_equal(first_word, second_word, target_word)
    converte_integer(first_word) + converte_integer(second_word) == converte_integer(target_word)
end

def converte_integer(word)
    word.chars.map{|x| x.ord - 97}.join.to_i
end
# @lc code=end