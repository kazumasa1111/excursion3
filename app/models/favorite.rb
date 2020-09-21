class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :schedule

  validates_uniqueness_of :schedule_id, scope: :user_id
end
