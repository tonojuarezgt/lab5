class Group < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true, format: {with: /\A[A-Za-z]+\z/}, length: { maximum: 1 }
end
