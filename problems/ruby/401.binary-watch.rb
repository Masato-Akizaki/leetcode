#
# @lc app=leetcode id=401 lang=ruby
#
# [401] Binary Watch
#

# @lc code=start
# @param {Integer} turned_on
# @return {String[]}
def read_binary_watch(turned_on)
  possible_times = []
  hours = [8, 4, 2, 1]
  minutes = [32, 16, 8, 4, 2, 1]
  return possible_times if turned_on >= 9
  pattern = [*0..turned_on].repeated_permutation(2).to_a.select{ |a| a.sum == turned_on }
  pattern.each do |a|
    hours.combination(a[0]).to_a.map{ |h| h.sum }.each do |h|
      next if h > 11
      minutes.combination(a[1]).to_a.map{ |m| m.sum }.each do |m|
        possible_times << format("%01d:%02d", h, m) if m <= 59
      end
    end
  end
  possible_times
end
# @lc code=end

