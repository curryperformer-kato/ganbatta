class Topic < ActiveRecord::Base
  acts_as_commentable
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
end
