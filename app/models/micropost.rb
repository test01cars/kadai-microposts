class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  # お気に入り課題用に追加 #
  has_many :favorites, dependent: :destroy
  has_many :bookmarked, through: :favorites, source: :user
  
end
