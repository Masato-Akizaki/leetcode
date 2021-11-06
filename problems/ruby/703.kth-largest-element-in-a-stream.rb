#
# @lc app=leetcode id=703 lang=ruby
#
# [703] Kth Largest Element in a Stream
#

# @lc code=start
class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
    def initialize(k, nums)
      @k = k
      @k_val = nums.sort.reverse[0..@k-1]
    end


=begin
    :type val: Integer
    :rtype: Integer
=end
    def add(val)
      @k_val << val
      @k_val = @k_val.sort.reverse[0..@k-1]
      return @k_val[-1]
    end


end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)
# @lc code=end

"["KthLargest","add","add","add","add","add"]\n[[1,[]],[-3],[-2],[-4],[0],[4]]"

"["KthLargest","add","add","add","add","add"]\n[[2,[0]],[-1],[1],[-2],[-4],[3]]"

"["KthLargest","add","add","add","add","add"]\n[[3,[5,-1]],[2],[1],[-1],[3],[4]]"