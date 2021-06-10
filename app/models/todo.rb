class Todo < ApplicationRecord
  belongs_to :project, :foreign_key => :project_id
  belongs_to :user
end
