#
# @lc app=leetcode id=744 lang=ruby
#
# [744] Find Smallest Letter Greater Than Target
#

# @lc code=start
# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  letters.sort!
  next_greatest_letter = letters.find{ |l| l.ord > target.ord }
  next_greatest_letter ? next_greatest_letter : letters[0]
end
# @lc code=end

