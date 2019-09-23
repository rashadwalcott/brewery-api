class Favorite < ApplicationRecord
  validates_uniqueness_of :brewery_id, scope: [:user_id]
  belongs_to :user
  belongs_to :brewery
end
