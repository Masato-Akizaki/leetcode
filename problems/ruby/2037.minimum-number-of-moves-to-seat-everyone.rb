#
# @lc app=leetcode id=2037 lang=ruby
#
# [2037] Minimum Number of Moves to Seat Everyone
#

# @lc code=start
# @param {Integer[]} seats
# @param {Integer[]} students
# @return {Integer}
def min_moves_to_seat(seats, students)
    seats.sort!
    students.sort!
    move = 0
    [*0...students.length].each do |i|
        move += (seats[i] - students[i]).abs
    end
    move
end
# @lc code=end