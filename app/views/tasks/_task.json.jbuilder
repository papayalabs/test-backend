json.extract! task, :id, :title, :start_date, :end_date, :email, :state, :created_at, :updated_at
json.url task_url(task, format: :json)
