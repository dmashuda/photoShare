json.array!(@photo_posts) do |photo_post|
  json.extract! photo_post, :id, :title, :description
  json.url photo_post_url(photo_post, format: :json)
end
