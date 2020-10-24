class Comment < ApplicationRecord
  belongs_to :user

  belongs_to :commentable, polymorphic: true

  has_many :subcomments, as: :commentable, class_name: 'Comment', foreign_key: 'commentable_id'
end
