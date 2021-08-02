#
# @lc app=leetcode id=225 lang=ruby
#
# [225] Implement Stack using Queues
#

# @lc code=start
class MyStack

=begin
    Initialize your data structure here.
=end
    def initialize()
      @queue1, @queue2 = [], []
    end


=begin
    Push element x onto stack.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @queue1.push(x)
    end


=begin
    Removes the element on top of the stack and returns that element.
    :rtype: Integer
=end
    def pop()
      until @queue1.empty? do
        break res = @queue1.shift if @queue1.length == 1
        @queue2.push(@queue1.shift)
      end
      @queue1 = @queue2
      @queue2 = []
      res
    end


=begin
    Get the top element.
    :rtype: Integer
=end
    def top()
      @queue1[-1]
    end


=begin
    Returns whether the stack is empty.
    :rtype: Boolean
=end
    def empty()
      @queue1.empty?
    end


end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
# @lc code=end

