#
# @lc app=leetcode id=1128 lang=ruby
#
# [1128] Number of Equivalent Domino Pairs
#

# @lc code=start
# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
  dominoes.map{|d| d.sort}.tally.values.map{|x| [*0..x-1].sum}.sum
end
# @lc code=end

