#
# @lc app=leetcode id=1436 lang=ruby
#
# [1436] Destination City
#

# @lc code=start
# @param {String[][]} paths
# @return {String}
def dest_city(paths)
    start_cities = paths.to_h.keys
    paths.each do |path|
        return path[1] unless start_cities.include?(path[1])
    end
end
# @lc code=end