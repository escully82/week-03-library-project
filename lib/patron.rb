class Patron < ActiveRecord::Base

  validates :name, presence: true
  validates :email_address, presence: true

end
