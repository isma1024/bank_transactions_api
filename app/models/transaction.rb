class Transaction < ApplicationRecord
	belongs_to :account
	belongs_to :category, optional: true

	validates :import, presence: true, numericality: true
	validates :description, presence: true, length: { minimum: 10 }
	default_scope { order(created_at: :desc) }
end
