class Vote < ApplicationRecord
  validates :poll, presence: true
  validates :ip, uniqueness: true

  belongs_to :poll
end
