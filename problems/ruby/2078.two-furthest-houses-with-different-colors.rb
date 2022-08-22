#
# @lc app=leetcode id=2078 lang=ruby
#
# [2078] Two Furthest Houses With Different Colors
#

# @lc code=start
# @param {Integer[]} colors
# @return {Integer}
def max_distance(colors)
    d = []
    colors.each_with_index do |c, i|
        [*i+1...colors.length].each do |j|
            d << (j - i).abs if c != colors[j]
        end
    end
    d.max
end
# @lc code=end