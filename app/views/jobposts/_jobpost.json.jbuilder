json.extract! jobpost, :id, :title, :company, :description, :salary, :url, :created_at, :updated_at
json.url jobpost_url(jobpost, format: :json)
