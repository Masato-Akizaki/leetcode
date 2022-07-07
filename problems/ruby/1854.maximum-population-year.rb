#
# @lc app=leetcode id=1854 lang=ruby
#
# [1854] Maximum Population Year
#

# @lc code=start
# @param {Integer[][]} logs
# @return {Integer}
def maximum_population(logs)
    hash = Hash.new(0)
    logs.each do |log|
        [*log[0]...log[1]].each{|x| hash[x] += 1}
    end
    hash.sort.max{ |x, y| x[1] <=> y[1] }[0]
end
# @lc code=end