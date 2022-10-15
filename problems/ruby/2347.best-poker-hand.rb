#
# @lc app=leetcode id=2347 lang=ruby
#
# [2347] Best Poker Hand
#

# @lc code=start
# @param {Integer[]} ranks
# @param {Character[]} suits
# @return {String}
def best_hand(ranks, suits)
    if suits.uniq.length == 1
        return "Flush"
    elsif ranks.tally.values.max >= 3
        return "Three of a Kind"
    elsif ranks.tally.values.max == 2
        return "Pair"
    else
        return "High Card"
    end
end
# @lc code=end