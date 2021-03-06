class Webpage < ApplicationRecord
	validates :name, presence: true
	validates :name, uniqueness: true

	has_many :bookmarks, dependent: :destroy

	def self.extract_domain_and_path(abs_path)
		parser = AbsPathParser.new(abs_path)
		parser.extract_protocol
		parser.split_domain_and_path

		[parser.protocol, parser.domain, parser.path]
	end
end
