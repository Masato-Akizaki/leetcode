#
# @lc app=leetcode id=2287 lang=ruby
#
# [2287] Rearrange Characters to Make Target String
#

# @lc code=start
# @param {String} s
# @param {String} target
# @return {Integer}
def rearrange_characters(s, target)
    arr = []
    s = s.chars.tally
    target.chars.tally.each do |k,v|
        arr << s[k].to_i / v
    end
    arr.min
end
# @lc code=end