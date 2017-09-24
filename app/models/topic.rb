class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, allow_destroy: true
  validates :title, presence: true
  mount_uploader :image, ImageUploader
end
