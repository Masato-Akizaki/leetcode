#
# @lc app=leetcode id=690 lang=ruby
#
# [690] Employee Importance
#

# @lc code=start
=begin
# Definition for Employee.
class Employee
    attr_accessor :id, :importance, :subordinates
    def initialize( id, importance, subordinates)
        @id = id
        @importance = importance
        @subordinates = subordinates
    end
end
=end

# @param {Employee} employees
# @param {Integer} id
# @return {Integer}
def get_importance(employees, id)
  employee = employees.select { |e| e.id == id }.first
  total_importance = employee.importance
  subordinate_ids = employee.subordinates
  until subordinate_ids.empty? do
    s_id = subordinate_ids.shift
    s = employees.select { |e| e.id == s_id }.first
    total_importance += s.importance
    subordinate_ids.concat(s.subordinates) if s.subordinates
  end
  total_importance
end
# @lc code=end

