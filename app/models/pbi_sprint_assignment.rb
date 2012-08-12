class PbiSprintAssignment < ActiveRecord::Base
  attr_accessible :pbi_id, :sprint_id

  belongs_to :sprint
  belongs_to :pbi

  def self.assign_or_unassign_according_action(pbi_sprint_assignment, action)
    if action == 'A'
      pbi_sprint_assignment.save
    elsif action == 'U'
      self.destroy_all(:sprint_id => pbi_sprint_assignment.sprint_id, :pbi_id => pbi_sprint_assignment.pbi_id)
    end
  end

end
