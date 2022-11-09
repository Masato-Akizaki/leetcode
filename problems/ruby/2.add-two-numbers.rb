#
# @lc app=leetcode id=2 lang=ruby
#
# [2] Add Two Numbers
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  list = ListNode.new(nil)
  temp_list = list
  carry = 0
  while l1 || l2 do
    if l1 && l2
      val = l1.val + l2.val + carry
    elsif l1
      val = l1.val+ carry
    elsif l2
      val = l2.val+ carry
    end

    if val >= 10
      val -= 10
      carry = 1
    else
      carry = 0
    end

    temp_list.next = ListNode.new(val)
    temp_list = temp_list.next
    l1 = l1.next if l1
    l2 = l2.next if l2
  end
  temp_list.next = ListNode.new(carry) if carry == 1
  list.next
end
# @lc code=end

