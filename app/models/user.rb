class User < ApplicationRecord
  belongs_to :todo, :foreign_key => :todo_id
end
