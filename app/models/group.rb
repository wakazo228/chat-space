class Group < ApplicationRecord
  #アソシエーション
  has_many :messages
  has_many :users, through: :group_users
  has_many :group_users
  #バリデーション
  validates :name, presence: true, uniqueness: true
end
