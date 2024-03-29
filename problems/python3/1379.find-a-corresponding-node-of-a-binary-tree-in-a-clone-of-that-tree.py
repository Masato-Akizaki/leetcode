#
# @lc app=leetcode id=1379 lang=python3
#
# [1379] Find a Corresponding Node of a Binary Tree in a Clone of That Tree
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def getTargetCopy(self, original: TreeNode, cloned: TreeNode, target: TreeNode) -> TreeNode:
        que = deque([cloned])
        while que:
            node = que.popleft()
            if node.val == target.val:
                return node
            if node.left:
                que.append(node.left)
            if node.right:
                que.append(node.right)
        
# @lc code=end

