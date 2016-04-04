class Staff < ActiveRecord::Base

  validates :name, presence: true
  validates :email_address, presence: true

  belongs_to :library

end
