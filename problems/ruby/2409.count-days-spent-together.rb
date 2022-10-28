#
# @lc app=leetcode id=2409 lang=ruby
#
# [2409] Count Days Spent Together
#

# @lc code=start
# @param {String} arrive_alice
# @param {String} leave_alice
# @param {String} arrive_bob
# @param {String} leave_bob
# @return {Integer}
require 'date'
def count_days_together(arrive_alice, leave_alice, arrive_bob, leave_bob)
    alice = []
    bob = []
    (Date.parse("2001-#{arrive_alice}")..Date.parse("2001-#{leave_alice}")).each do |date|
        alice << date
    end
    (Date.parse("2001-#{arrive_bob}")..Date.parse("2001-#{leave_bob}")).each do |date|
        bob << date
    end
    (alice & bob).count
end
# @lc code=end