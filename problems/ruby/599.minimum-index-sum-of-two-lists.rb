#
# @lc app=leetcode id=599 lang=ruby
#
# [599] Minimum Index Sum of Two Lists
#

# @lc code=start
# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
  hash = {}
  list2 = list2.map.with_index { |k, i| [k, i] }.to_h
  list1.each_with_index do |s, i|
    hash[s] = i + list2[s] if list2[s]
  end
  min = hash.values.min
  hash.select{|k,v| v == min}.keys
end
# @lc code=end

