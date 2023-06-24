class User < ApplicationRecord
  # Associations
  has_many :tweets, dependent: :destroy

  has_many :likes, class_name: "Like", dependent: :destroy, inverse_of: :tweet
  #has_many :tweets, through: :likes
end
