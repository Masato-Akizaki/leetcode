#
# @lc app=leetcode id=2129 lang=ruby
#
# [2129] Capitalize the Title
#

# @lc code=start
# @param {String} title
# @return {String}
def capitalize_title(title)
    words = []
    title.split(" ").each do |word|
        word.downcase!
        word.capitalize! if word.length > 2
        words << word
    end
    words.join(" ")
end
# @lc code=end