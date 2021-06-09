class Todo < ApplicationRecord
  belongs_to :project, :foreign_key => :project_id
  has_many :users
end
