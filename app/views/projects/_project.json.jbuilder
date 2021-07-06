json.extract! project, :id, :name, :description, :created_at, :updated_at, :delete_flag
json.url project_url(project, format: :json)
