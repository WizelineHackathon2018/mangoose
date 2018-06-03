class Profile < ApplicationRecord
  belongs_to :team
  has_many :users

  def generic_designer_profile
    new()
  end

  def generic_developer_profile

  end

  def generic_base_profile

  end

end
