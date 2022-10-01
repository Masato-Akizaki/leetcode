#
# @lc app=leetcode id=2273 lang=ruby
#
# [2273] Find Resultant Array After Removing Anagrams
#

# @lc code=start
# @param {String[]} words
# @return {String[]}
def remove_anagrams(words)
    [*1...words.length].each do |i|
        if words[i].chars.sort == words[i-1].chars.sort
            words.delete_at(i) 
            words.unshift(nil)
        end
    end
    words - [nil]
end
# @lc code=end