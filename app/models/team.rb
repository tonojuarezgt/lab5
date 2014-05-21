class Team < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true, format: {with: /\A[A-Za-z]+\z/}  
	validates :name_c, presence: true, uniqueness: true
 	validates :flag, presence: true, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i}
 	validates :uniform, presence: true, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i}
 	validates :text, presence: true, length: { minimum: 15, maximum: 200 }
end
