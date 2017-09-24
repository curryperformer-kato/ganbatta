class Task < ActiveRecord::Base
    validates :name
    validates :memo
    belongs_to :topic
end
