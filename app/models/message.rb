class Message < ApplicationRecord
  #アソシエーション
  belongs_to :user
  belongs_to :group
  #バリデーション
  validates :body, presence: true, unless: :image?

  mount_uploader :image, ImageUploader
end
