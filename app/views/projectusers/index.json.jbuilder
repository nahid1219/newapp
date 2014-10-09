json.array!(@projectusers) do |projectuser|
  json.extract! projectuser, :id, :project_id, :user_id
  json.url projectuser_url(projectuser, format: :json)
end
