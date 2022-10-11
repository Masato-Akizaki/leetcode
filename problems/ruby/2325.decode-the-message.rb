#
# @lc app=leetcode id=2325 lang=ruby
#
# [2325] Decode the Message
#

# @lc code=start
# @param {String} key
# @param {String} message
# @return {String}
def decode_message(key, message)
    decoded = ""
    hash = [key.gsub(/ /, "").chars.uniq, [*'a'..'z']].transpose.to_h
    message.chars.each{|c| decoded += c != " " ? hash[c] : " "}
    decoded
end
# @lc code=end