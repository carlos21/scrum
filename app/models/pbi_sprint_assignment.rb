class PbiSprintAssignment < ActiveRecord::Base
  attr_accessible :pbi_id, :sprint_id

  belongs_to :sprint
  belongs_to :pbi
end
