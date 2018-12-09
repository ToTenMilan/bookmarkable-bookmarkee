class Bookmark < ApplicationRecord
  validates :name, presence: true
	validates :name, uniqueness: true

  belongs_to :webpage
end
