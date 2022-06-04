#
# @lc app=leetcode id=1704 lang=ruby
#
# [1704] Determine if String Halves Are Alike
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
    s[0...s.length/2].downcase.count('aiueo') == s[s.length/2..-1].downcase.count('aiueo')
end
# @lc code=end