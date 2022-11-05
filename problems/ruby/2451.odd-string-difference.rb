#
# @lc app=leetcode id=2451 lang=ruby
#
# [2451] Odd String Difference
#

# @lc code=start
# @param {String[]} words
# @return {String}
def odd_string(words)
    hash = Hash.new
    arr = []
    words.each do |word|
        diff_i_arr = []
        [*0..word.length-2].each do |i|
            diff_i_arr << word[i+1].ord - word[i].ord
        end
        arr << diff_i_arr
        hash[diff_i_arr] = word
    end
    hash[arr.tally.key(1)]
end
# @lc code=end