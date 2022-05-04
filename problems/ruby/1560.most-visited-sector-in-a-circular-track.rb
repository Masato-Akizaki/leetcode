#
# @lc app=leetcode id=1560 lang=ruby
#
# [1560] Most Visited Sector in a Circular Track
#

# @lc code=start
# @param {Integer} n
# @param {Integer[]} rounds
# @return {Integer[]}
def most_visited(n, rounds)
    visited_sectors = [rounds.first]
    track = [*1..n]
    rounds.each_cons(2) do |r1, r2|
        r1 > r2 ? visited_sectors << track[r1..-1] + track[0..r2-1] : visited_sectors << track[r1..r2-1]
    end
    visited_sectors = visited_sectors.flatten.tally
    max_times = visited_sectors.max{|x, y| x[1] <=> y[1]}[1]
    visited_sectors.select{|k, v| v == max_times}.keys.sort
endrse
end
# @lc code=end