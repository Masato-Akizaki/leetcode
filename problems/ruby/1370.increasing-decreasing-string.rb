#
# @lc app=leetcode id=1370 lang=ruby
#
# [1370] Increasing Decreasing String
#

# @lc code=start
# @param {String} s
# @return {String}
def sort_string(s)
    s = s.chars
    result = []
    i = 0
    until s.empty? do
        i.even? ? arr = s.uniq.sort : arr = s.uniq.sort.reverse
        result += arr
        arr.each{|x| s.delete_at(s.index(x))}
        i += 1
    end
    result.join
end
# @lc code=end