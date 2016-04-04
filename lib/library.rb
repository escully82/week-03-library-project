class Library < ActiveRecord::Base

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  has_many :books
  has_many :staffs
  has_many :patrons

  def view_library
    puts "Reagan Public Library, 2712 South R St. Lincoln, NE 68532, 402.213.8975"
  end

end
