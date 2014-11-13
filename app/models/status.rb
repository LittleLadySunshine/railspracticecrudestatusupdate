class Status < ActiveRecord::Base
  validates :status, presence: true
  validates :user, presence: true
  validate :number_of_likes, presence: true
end
