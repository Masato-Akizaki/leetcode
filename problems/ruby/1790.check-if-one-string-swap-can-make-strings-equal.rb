#
# @lc app=leetcode id=1790 lang=ruby
#
# [1790] Check if One String Swap Can Make Strings Equal
#

# @lc code=start
# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
    return true if s1 == s2
    chars1 = []
    chars2 = []
    s1.chars.each_with_index do |c, i|
        if s1[i] != s2[i]
            chars1 << s1[i]
            chars2 << s2[i]
        end
    end
    chars1.length == 2 && chars1.sort == chars2.sort
end
# @lc code=end