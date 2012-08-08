class Pbi < ActiveRecord::Base
  attr_accessible :description, :story_points, :sprint_id

  has_many :activities
  has_many :pbisprintassignment
  has_many :sprints, through: :pbisprintassignment

  def assign_or_unassign_according_action(sprint_id, action)
    if action == 'A'
      update_attributes(:sprint_id => sprint_id)
    elsif action == 'U'
      update_attributes(:sprint_id => nil)
    end
  end
end
