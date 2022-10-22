#
# @lc app=leetcode id=2383 lang=ruby
#
# [2383] Minimum Hours of Training to Win a Competition
#

# @lc code=start
# @param {Integer} initial_energy
# @param {Integer} initial_experience
# @param {Integer[]} energy
# @param {Integer[]} experience
# @return {Integer}
def min_number_of_hours(initial_energy, initial_experience, energy, experience)
    h = 0
    ex = initial_experience
    [*0...experience.length].each do |i|
        if ex <= experience[i]
            h += (experience[i] - ex) + 1
            ex = experience[i] + 1
            ex += experience[i]
        else
            ex += experience[i]
        end
    end
    h + [0, (energy.sum - initial_energy + 1)].max
end
# @lc code=end