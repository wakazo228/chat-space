class GroupUser < ApplicationRecord
  #アソシエーション
  belongs_to :group
  belongs_to :user
end