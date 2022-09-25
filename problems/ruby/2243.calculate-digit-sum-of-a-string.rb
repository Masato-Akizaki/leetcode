#
# @lc app=leetcode id=2243 lang=ruby
#
# [2243] Calculate Digit Sum of a String
#

# @lc code=start
# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
    while s.length > k do
        digets = []
        s.chars.each_slice(k) do |arr|
            digets << arr.map(&:to_i).sum
        end
        s = digets.join
    end
    s
end
# @lc code=end