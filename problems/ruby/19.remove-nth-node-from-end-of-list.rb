#
# @lc app=leetcode id=19 lang=ruby
#
# [19] Remove Nth Node From End of List
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
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  lists = []
  tmp = head
  while tmp
    lists << tmp
    tmp = tmp.next
  end
  return head.next if n == lists.length
  if n == 1
    lists[-2].next = nil 
  else
    lists[-n-1].next = lists[-n+1]
  end
  head
end
# @lc code=end

