class Blog < ApplicationRecord
	has_many :comments, dependent: :destroy

	validates :title, uniqueness: true, presence: true
	validates :body, presence: true
end
