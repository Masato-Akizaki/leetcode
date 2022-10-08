#
# @lc app=leetcode id=2309 lang=ruby
#
# [2309] Greatest English Letter in Upper and Lower Case
#

# @lc code=start
# @param {String} s
# @return {String}
def greatest_letter(s)
    uppers = []
    s.chars.select{|c| /[A-Z]/.match?(c)}.each do |c|
        uppers << c if s.include?(c.downcase)
    end
    uppers.empty? ? "" : uppers.max
end
# @lc code=end