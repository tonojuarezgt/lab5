class Stadium < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true,format: {with: /\A[A-Za-z]+\z/}
	validates :city, presence: true, uniqueness: true,format: {with: /\A(Belo Horizonte|Brasilia|Cuiaba|Curitiba|Fortaleza|Manaus|Natal|Recife|Rio de Janeiro|Salvador|Sao Paulo)\z/i}
	validates :date, presence: true
	validates :capacity, presence: true, numericality: {only_integer: true}
	validates :photo, presence: true, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i}
end
