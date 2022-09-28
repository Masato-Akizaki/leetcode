#
# @lc app=leetcode id=2259 lang=ruby
#
# [2259] Remove Digit From Number to Maximize Result
#

# @lc code=start
# @param {String} number
# @param {Character} digit
# @return {String}
def remove_digit(number, digit)
    num = []
    number.each_char.with_index do |d, i|
        if d == digit
            temp_n = number.chars
            temp_n.delete_at(i)
            num << temp_n.join.to_i
        end
    end
    num.max.to_s
end
# @lc code=end