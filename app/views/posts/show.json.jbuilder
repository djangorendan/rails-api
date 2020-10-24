json.id @post.id
json.title @post.title
json.user do
  json.email @post.user.email
end
json.comments @post.comments.each do |comment|
  json.body comment.body
  json.user do
    json.email comment.user.email
  end
  json.subcomments comment.subcomments.each do |subcomment|
    json.body subcomment.body
    json.user do
      json.email subcomment.user.email
    end
  end
end