class Event < ActiveRecord::Base
  has_many :invitations
  has_many :meetings

  validates :title, :description, presence: true
end
