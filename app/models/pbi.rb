class Pbi < ActiveRecord::Base
  attr_accessible :description, :story_points, :status, :priority

  has_many :activities
  has_many :pbisprintassignment
  has_many :sprints, through: :pbisprintassignment

  def self.get_selected_pbis_by_sprint(sprint_id)
    find_by_sql("select pbis.id, pbis.description, pbis.status, pbis.story_points from pbis 
                 inner join pbi_sprint_assignments 
                 on pbi_sprint_assignments.pbi_id = pbis.id 
                 where pbi_sprint_assignments.sprint_id = #{sprint_id}")
  end

end