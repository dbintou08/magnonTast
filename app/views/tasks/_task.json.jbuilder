json.extract! task, :id, :titre, :content, :created_at, :updated_at
json.url task_url(task, format: :json)
