#
# @lc app=leetcode id=2124 lang=ruby
#
# [2124] Check if All A's Appears Before All B's
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def check_string(s)
    return true if s.index("a").nil? || s.index("b").nil?
    s.rindex("a") < s.index("b")
end
# @lc code=end