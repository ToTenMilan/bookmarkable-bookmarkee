class Webpage < ApplicationRecord
	validates :name, presence: true
	validates :name, uniqueness: true

	has_many :bookmarks, dependent: :destroy
end
