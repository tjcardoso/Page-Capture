class Entry < ApplicationRecord
  belongs_to :page

  validates :tag_name, presence: true
end
