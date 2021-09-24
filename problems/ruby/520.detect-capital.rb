#
# @lc app=leetcode id=520 lang=ruby
#
# [520] Detect Capital
#

# @lc code=start
# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  initial = word[0]
  if initial.ord >= 65 && initial.ord <= 90
    return true if word[1..-1].chars.all? {|c| c.ord >= 65 && c.ord <= 90 }
    return true if word[1..-1].chars.all? {|c| c.ord >= 97 && c.ord <= 122 }
  elsif initial.ord >= 97 && initial.ord <= 122
    return true if word[1..-1].chars.all? {|c| c.ord >= 97 && c.ord <= 122 }
  end
  false
end
# @lc code=end

