json.array!(@photo_posts) do |photo_post|
  json.extract! photo_post, :id, :title, :description, :tag_list, :image
end
