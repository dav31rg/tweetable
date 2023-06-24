class Tweet < ApplicationRecord
  attribute :likes_count, :integer, default: 0

  # Associations:
  belongs_to :user

  has_many :likes, class_name: "Like", dependent: :destroy, inverse_of: :user
  has_many :users, through: :likes

  has_many :replies, class_name: "Tweet",
                    foreign_key: "replied_to_id",
                    dependent: :destroy,
                    inverse_of: "replied_to"

  belongs_to :replied_to, class_name: "Tweet", optional: true
end
