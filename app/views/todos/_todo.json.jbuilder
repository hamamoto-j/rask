json.extract! todo, :id, :name, :description, :due_date, :created_at, :updated_at, :delete_flag
json.url todo_url(todo, format: :json)
