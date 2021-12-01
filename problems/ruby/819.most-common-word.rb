#
# @lc app=leetcode id=819 lang=ruby
#
# [819] Most Common Word
#

# @lc code=start
# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
  paragraph.downcase.split(/\.|\?|!|'|,|;|\s/).reject(&:empty?).tally.sort_by { |_, v| -v }.each do |word|
    return word[0] unless banned.include?(word[0])
  end
end
# @lc code=end

