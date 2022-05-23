#
# @lc app=leetcode id=1652 lang=ruby
#
# [1652] Defuse the Bomb
#

# @lc code=start
# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
    if k > 0
        return [*0...code.length].map{|i| (code*2)[i+1..i+k].sum}
    elsif k < 0
        return [*0...code.length].map{|i| (code*2)[-(k.abs)-i..-1-i].sum}.rotate(1).reverse
    else
        return [0] * code.length
    end
end
# @lc code=end