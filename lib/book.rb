class Book < ActiveRecord::Base

  validates :title, presence: true
  validates :author, presence: true
  validates :ISBN, presence: true

  belongs_to :library
  belongs_to :patron

end
