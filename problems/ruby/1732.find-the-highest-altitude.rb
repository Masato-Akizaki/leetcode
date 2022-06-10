#
# @lc app=leetcode id=1732 lang=ruby
#
# [1732] Find the Highest Altitude
#

# @lc code=start
# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
    highest_altitude = 0
    altitude = 0
    gain.each do |g|
        altitude += g
        highest_altitude = [altitude, highest_altitude].max
    end
    highest_altitude
end
# @lc code=end