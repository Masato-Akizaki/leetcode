#
# @lc app=leetcode id=893 lang=ruby
#
# [893] Groups of Special-Equivalent Strings
#

# @lc code=start
# @param {String[]} words
# @return {Integer}
def num_special_equiv_groups(words)
  groups = []
  words.each do |w|
    pair = [w.chars.select.with_index{|x, i| i.even?}.sort, w.chars.select.with_index{|x, i| i.odd?}.sort]
    groups << pair unless groups.include?(pair)
  end
  return groups.length
end
# @lc code=end

