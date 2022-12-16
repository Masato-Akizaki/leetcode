#
# @lc app=leetcode id=61 lang=ruby
#
# [61] Rotate List
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
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  lists = []
  tmp_head = head
  while tmp_head
      lists << tmp_head.dup
      lists[-1].next = nil
      tmp_head = tmp_head.next
  end
  lists.rotate!(-k)
  list = ListNode.new()
  tmp_list = list
  [*0...lists.length].each do |i|
      tmp_list.next = lists[i]
      tmp_list = tmp_list.next
  end
  list.next
end
# @lc code=end

