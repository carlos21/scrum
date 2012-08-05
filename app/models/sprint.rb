class Sprint < ActiveRecord::Base
  attr_accessible :description, :end_date, :goal, :start_date

  has_many :pbisprintassignment
  has_many :pbis, through: :pbisprintassignment
end
