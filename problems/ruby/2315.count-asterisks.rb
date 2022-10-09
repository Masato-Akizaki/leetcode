#
# @lc app=leetcode id=2315 lang=ruby
#
# [2315] Count Asterisks
#

# @lc code=start
# @param {String} s
# @return {Integer}
def count_asterisks(s)
    s.split("|").select.with_index{|x,i| i.even?}.join.count("*")
end
# @lc code=end