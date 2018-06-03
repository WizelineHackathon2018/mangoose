class Profile < ApplicationRecord
  belongs_to :team
  has_many :users
end
