#
# @lc app=leetcode id=383 lang=ruby
#
# [383] Ransom Note
#

# @lc code=start
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  ransom_note = ransom_note.chars.tally
  magazine = magazine.chars.tally
  chars = magazine.merge(ransom_note).keys
  chars.each do |c|
    return false if magazine[c].to_i - ransom_note[c].to_i < 0
  end
  true
end
# @lc code=end

