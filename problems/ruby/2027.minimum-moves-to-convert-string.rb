#
# @lc app=leetcode id=2027 lang=ruby
#
# [2027] Minimum Moves to Convert String
#

# @lc code=start
# @param {String} s
# @return {Integer}
def minimum_moves(s)
    count = 0
    i = 0
    while i < s.length do
        if s[i] == "X"
            count += 1
            i += 3
        else
            i += 1
        end
    end
    count
end
# @lc code=end