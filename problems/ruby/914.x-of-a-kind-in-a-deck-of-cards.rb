#
# @lc app=leetcode id=914 lang=ruby
#
# [914] X of a Kind in a Deck of Cards
#

# @lc code=start
# @param {Integer[]} deck
# @return {Boolean}
require 'prime'
def has_groups_size_x(deck)
  return false if deck.length == 1

  num = deck.tally.values.uniq.sort
  return false if num[0] == 1
  return true if num.length == 1
  Prime.each(num[0]) do |prime|
    return true if num.all?{|x| x % prime == 0}
  end
  false
end
# @lc code=end

