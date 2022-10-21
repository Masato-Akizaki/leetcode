#
# @lc app=leetcode id=2379 lang=ruby
#
# [2379] Minimum Recolors to Get K Consecutive Black Blocks
#

# @lc code=start
# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
    n = []
    blocks.chars.each_cons(k) do |b|
        return 0 if b.join.include?("B" * k)
        n << b.count("W")
    end
    n.min
end
# @lc code=end