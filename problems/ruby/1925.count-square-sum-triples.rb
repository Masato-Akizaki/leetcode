#
# @lc app=leetcode id=1925 lang=ruby
#
# [1925] Count Square Sum Triples
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def count_triples(n)
    target = [*1..n].map{|x| x * x}
    [*1..n].combination(2).to_a.count{|x| target.include?(x[0] ** 2 + x[1] ** 2)} * 2
end
# @lc code=end