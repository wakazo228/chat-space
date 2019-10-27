class Group < ApplicationRecord
  #アソシエーション
  has_many :messages
  has_many :users, through: :group_users
  has_many :group_users
  #バリデーション
  validates :name, presence: true, uniqueness: true

  def show_last_message
    if (last_message = messages.last).present?
      last_message.body? ? last_message.body : '画像が投稿されています'
    else
      'まだメッセージはありません。'
    end
  end

end
