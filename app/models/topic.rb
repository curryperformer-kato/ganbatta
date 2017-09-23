class Topic < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, allow_destroy: true
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
end
