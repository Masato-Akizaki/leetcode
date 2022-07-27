#
# @lc app=leetcode id=1945 lang=ruby
#
# [1945] Sum of Digits of String After Convert
#

# @lc code=start
# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_lucky(s, k)
    sum = s.chars.map{|x| x.ord - 96}.join.chars.map(&:to_i).sum
    if k > 1
        [*2..k].each do |i|
            sum = sum.to_s.chars.map(&:to_i).sum
        end
    end
    sum
end
# @lc code=end