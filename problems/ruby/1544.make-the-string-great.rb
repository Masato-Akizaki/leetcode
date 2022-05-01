#
# @lc app=leetcode id=1544 lang=ruby
#
# [1544] Make The String Great
#

# @lc code=start
# @param {String} s
# @return {String}
def make_good(s)
    s0 = ""
    s1 = s
    while s0 != s1 do
        s0 = s1
        s0.chars.each_cons(2) do |c1, c2|
            s1 = s1.gsub("#{c1}#{c2}", "") if c1 == c2.swapcase
        end
    end
    s1
end
# @lc code=end