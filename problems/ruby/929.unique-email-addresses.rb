#
# @lc app=leetcode id=929 lang=ruby
#
# [929] Unique Email Addresses
#

# @lc code=start
# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  receive_mails = []
  emails.each do |email|
    email = email.split('@')
    receive_mails << email[0].gsub(/\./, "").split(/\+/)[0] + "@" + email[1] 
  end
  return receive_mails.uniq.length
end
# @lc code=end

