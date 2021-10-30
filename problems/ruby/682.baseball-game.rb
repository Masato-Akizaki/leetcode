#
# @lc app=leetcode id=682 lang=ruby
#
# [682] Baseball Game
#

# @lc code=start
# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
  score = []
  ops.each do |o|
    if o == "C"
      score.delete_at(-1)
    elsif o == "D"
      score << score.last * 2
    elsif o == "+"
      score << score.last(2).sum
    else
      score << o.to_i
    end
  end
  score.sum
end
# @lc code=end

