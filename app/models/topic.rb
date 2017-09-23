class Topic < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
　acts_as_commentable
end
