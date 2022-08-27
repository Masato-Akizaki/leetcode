#
# @lc app=leetcode id=2103 lang=ruby
#
# [2103] Rings and Rods
#

# @lc code=start
# @param {String} rings
# @return {Integer}
def count_points(rings)
    hash = Hash.new()
    rings.split("").each_slice(2) do |r|
        if hash[r[1]]
            hash[r[1]] << r[0]
        else
            hash[r[1]] = [r[0]]
        end
    end
    hash.values.select{|x| x.uniq.length == 3}.length
end
# @lc code=end