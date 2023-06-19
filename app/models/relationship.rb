class Relationship < ApplicationRecord
    belongs_to :user
    belongs_to :probrem
    validates :user_id, presence: true
    validates :probrem_id, presence: true
end
