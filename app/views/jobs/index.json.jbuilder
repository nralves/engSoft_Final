json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :body, :author, :available, :user_id
  json.url job_url(job, format: :json)
end
