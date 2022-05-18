#
# @lc app=leetcode id=1624 lang=ruby
#
# [1624] Largest Substring Between Two Equal Characters
#

# @lc code=start
# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s)
    equal_chars = s.chars.tally.select{|k,v| v >= 2}.keys
    return -1 if equal_chars.empty?
    max_length = 0
    equal_chars.each do |c|
        max_length = [s[(s.index(c)+1)...(s.rindex(c))].length, max_length].max
    end
    max_length
end
# @lc code=end