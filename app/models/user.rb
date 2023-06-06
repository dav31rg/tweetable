class User < ApplicationRecord
  # Associations
  has_many :tweets, dependent: :destroy

  has_many :likes, class_name: "like", foreign_key: "reference_id", dependent: :destroy
  has_many :tweets, through: :likes
end
