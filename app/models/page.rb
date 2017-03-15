class Page < ApplicationRecord
  has_many :entries

  validates :url, presence: true
end
