#
# @lc app=leetcode id=1441 lang=ruby
#
# [1441] Build an Array With Stack Operations
#

# @lc code=start
# @param {Integer[]} target
# @param {Integer} n
# @return {String[]}
def build_array(target, n)
    list = []
    operations_list = []
    [*1..n].each do |i|
        list.push(i)
        operations_list << "Push"
        unless target.include?(i)
            list.pop
            operations_list << "Pop" 
        end
        return operations_list if list == target
    end
    operations_list
end
# @lc code=end