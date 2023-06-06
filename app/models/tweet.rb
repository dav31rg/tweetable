class Tweet < ApplicationRecord
  # Associations:
  belongs_to :user

  has_many :likes, class_name: "like", foreign_key: "reference_id", dependent: :destroy
  has_many :users, through: :likes
end
