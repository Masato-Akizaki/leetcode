#
# @lc app=leetcode id=303 lang=ruby
#
# [303] Range Sum Query - Immutable
#

# @lc code=start
class NumArray

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
      @num_array = nums
    end


=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
    def sum_range(left, right)
      @num_array[left..right].sum
    end


end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(left, right)
# @lc code=end

