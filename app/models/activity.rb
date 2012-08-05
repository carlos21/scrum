class Activity < ActiveRecord::Base
  attr_accessible :description, :developer_id, :pbi_id

  belongs_to :pbi
  has_one :developer
end
