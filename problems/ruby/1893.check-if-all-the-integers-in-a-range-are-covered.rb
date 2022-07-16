#
# @lc app=leetcode id=1893 lang=ruby
#
# [1893] Check if All the Integers in a Range Are Covered
#

# @lc code=start
# @param {Integer[][]} ranges
# @param {Integer} left
# @param {Integer} right
# @return {Boolean}
def is_covered(ranges, left, right)
    nums = []
    ranges.each do |range|
        nums << [*range[0]..range[1]]
    end
    nums = nums.flatten.uniq.sort
    [*left..right].all?{ |i| nums.include?(i) }
end
# @lc code=end