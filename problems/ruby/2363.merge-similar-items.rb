#
# @lc app=leetcode id=2363 lang=ruby
#
# [2363] Merge Similar Items
#

# @lc code=start
# @param {Integer[][]} items1
# @param {Integer[][]} items2
# @return {Integer[][]}
def merge_similar_items(items1, items2)
    items1.to_h.merge(items2.to_h){|k, v1, v2| v1 + v2}.sort
end
# @lc code=end