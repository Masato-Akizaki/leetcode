#
# @lc app=leetcode id=2114 lang=ruby
#
# [2114] Maximum Number of Words Found in Sentences
#

# @lc code=start
# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
    sentences.map{|x| x.split(" ").length}.max
end
# @lc code=end