class Blog < ApplicationRecord
	has_many :comments, dependent: :destroy

	validates :title, uniqueness: true
end
