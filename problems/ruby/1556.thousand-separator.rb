#
# @lc app=leetcode id=1556 lang=ruby
#
# [1556] Thousand Separator
#

# @lc code=start
# @param {Integer} n
# @return {String}
def thousand_separator(n)
    str = ""
    n.to_s.split("").reverse.each_slice(3) do |a, b, c|
        str += "#{a}#{b}#{c}."
    end
    str[0..-2].reverse
end
# @lc code=end