class Task < ActiveRecord::Base
    validates :name, presence: true
    validates :memo, presence: true
    belongs_to :topic
end
