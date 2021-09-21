#
# @lc app=leetcode id=506 lang=ruby
#
# [506] Relative Ranks
#

# @lc code=start
# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  ranks = ["Gold Medal", "Silver Medal", "Bronze Medal"] + [*"4".."#{score.length}"]
  score_ranks = score.sort.reverse.zip(ranks).to_h
  score.map{ |x| score_ranks[x] }
end
# @lc code=end

