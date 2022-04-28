#
# @lc app=leetcode id=1528 lang=ruby
#
# [1528] Shuffle String
#

# @lc code=start
# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
    string = []
    s.each_char.with_index do |c, i|
        string[indices[i]] = c
    end
    string.join
end
# @lc code=end