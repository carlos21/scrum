class Pbi < ActiveRecord::Base
  attr_accessible :description, :story_points

  has_many :activities
  has_many :pbisprintassignment
  has_many :sprints, through: :pbisprintassignment
end
