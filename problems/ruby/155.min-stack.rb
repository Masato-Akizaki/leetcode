#
# @lc app=leetcode id=155 lang=ruby
#
# [155] Min Stack
#

# @lc code=start
class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
      @stack = []
      @min = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      @stack.push(val)
      @min.push(val) if @min.empty? || @min.last >= val
    end


=begin
    :rtype: Void
=end
    def pop()
      @min.pop if @min.last == @stack.last
      @stack.pop
    end


=begin
    :rtype: Integer
=end
    def top()
      @stack.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @min.last
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
# @lc code=end

