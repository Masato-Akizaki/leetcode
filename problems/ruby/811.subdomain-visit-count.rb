#
# @lc app=leetcode id=811 lang=ruby
#
# [811] Subdomain Visit Count
#

# @lc code=start
# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  hash = Hash.new(0)
  cpdomains.each do |cpdomain|
    parent_domains = []
    cpdomain.split(' ')[1].split('.').reverse.each_with_index do |d, i|
      d = d + '.' + parent_domains[i-1] if i > 0
      hash[d] += cpdomain.split(' ')[0].to_i
      parent_domains << d
    end
  end
  hash.to_a.map{|a| "#{a[1]} #{a[0]}" }
end
# @lc code=end

