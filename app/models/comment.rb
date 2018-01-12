class Comment < ApplicationRecord
  validates :comment_body, presence: true

  belongs_to :user
  belongs_to :topic
end
