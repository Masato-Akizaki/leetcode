#
# @lc app=leetcode id=2351 lang=ruby
#
# [2351] First Letter to Appear Twice
#

# @lc code=start
# @param {String} s
# @return {Character}
def repeated_character(s)
    hash = Hash.new(0)
    s.each_char do |c|
        return c if hash[c] == 1
        hash[c] += 1
    end
end
# @lc code=end