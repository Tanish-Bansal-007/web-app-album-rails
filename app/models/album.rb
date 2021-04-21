class Album < ApplicationRecord
  belongs_to :user 
  has_many :comments, dependent: :destroy  
  has_many_attached :images, dependent: :destroy
  validates :title, presence: true
  validates :desciption, presence: true, length: {minimum: 10}
end
