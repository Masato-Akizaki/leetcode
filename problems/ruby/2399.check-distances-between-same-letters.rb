#
# @lc app=leetcode id=2399 lang=ruby
#
# [2399] Check Distances Between Same Letters
#

# @lc code=start
# @param {String} s
# @param {Integer[]} distance
# @return {Boolean}
def check_distances(s, distance)
    s.chars.uniq.each do |c|
        return false if distance[c.ord - 97] != s.rindex(c) - s.index(c) - 1
    end
    true
end
# @lc code=end