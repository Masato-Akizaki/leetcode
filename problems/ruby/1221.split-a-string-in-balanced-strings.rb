#
# @lc app=leetcode id=1221 lang=ruby
#
# [1221] Split a String in Balanced Strings
#

# @lc code=start
# @param {String} s
# @return {Integer}
def balanced_string_split(s)
    r_count = 0
    l_count = 0
    split_count = 0
    s.each_char do |c|
        r_count += 1 if c == 'R'
        l_count += 1 if c == 'L'
        split_count += 1 if r_count == l_count
    end
    split_count
end
# @lc code=end