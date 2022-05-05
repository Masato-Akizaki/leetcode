#
# @lc app=leetcode id=1566 lang=ruby
#
# [1566] Detect Pattern of Length M Repeated K or More Times
#

# @lc code=start
# @param {Integer[]} arr
# @param {Integer} m
# @param {Integer} k
# @return {Boolean}
def contains_pattern(arr, m, k)
    arr.each_cons(m*k) do |v|
        patterns = []
        v.each_slice(m) do |w|
            patterns << w
        end
        return true if patterns.uniq.length == 1
    end
    return false
end
# @lc code=end