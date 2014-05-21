class Participation < ActiveRecord::Base
  has_many :team
  has_many :group
end
