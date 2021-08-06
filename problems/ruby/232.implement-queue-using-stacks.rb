#
# @lc app=leetcode id=232 lang=ruby
#
# [232] Implement Queue using Stacks
#

# @lc code=start
class MyQueue

=begin
    Initialize your data structure here.
=end
    def initialize()
      @stack1, @stack2 = [], []
    end


=begin
    Push element x to the back of queue.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @stack1 << x 
    end


=begin
    Removes the element from in front of queue and returns that element.
    :rtype: Integer
=end
    def pop()
      until @stack1.empty?
        @stack2 << @stack1.pop
      end
      res = @stack2.pop
      until @stack2.empty?
        @stack1 << @stack2.pop
      end
      res
    end


=begin
    Get the front element.
    :rtype: Integer
=end
    def peek()
      @stack1[0]
    end


=begin
    Returns whether the queue is empty.
    :rtype: Boolean
=end
    def empty()
      @stack1.empty?
    end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
# @lc code=end

