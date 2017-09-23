class Topic < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :tasktypes, dependent: :destroy
  accepts_nested_attributes_for :tasktype, allow_destroy: true
end
