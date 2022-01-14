#
# @lc app=leetcode id=997 lang=ruby
#
# [997] Find the Town Judge
#

# @lc code=start
# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  return 1 if trust.empty? && n == 1
  a = trust.map{|x| x[0]}
  b = trust.map{|x| x[1]}
  judge = b.uniq - a.uniq
  return judge[0] if judge.length == 1 && b.count(judge[0]) == n - 1
  return -1 
end
# @lc code=end

