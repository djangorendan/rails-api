json.array! @posts do |post|
  json.id post.id
  json.title post.title

  json.partial! "shared/pagination", collection: @posts
end