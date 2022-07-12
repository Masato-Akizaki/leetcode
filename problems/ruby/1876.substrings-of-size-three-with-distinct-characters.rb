#
# @lc app=leetcode id=1876 lang=ruby
#
# [1876] Substrings of Size Three with Distinct Characters
#

# @lc code=start
# @param {String} s
# @return {Integer}
def count_good_substrings(s)
    count = 0
    s.chars.each_cons(3) do |arr|
        count += 1 if arr.uniq.length == 3
    end
    count
end
# @lc code=end