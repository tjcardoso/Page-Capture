class Entry < ApplicationRecord
  belongs_to :page

  validates :text, presence: true
  validates :tag_name, presence: true
end
