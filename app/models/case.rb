class Case < ApplicationRecord
  validates :original_id, presence: true
  validates :original_id, uniqueness: true
end
