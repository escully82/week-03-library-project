

class Library < ActiveRecord::Base

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  def initialize(libraries_menu)
    @libraries_menu = libraries_menu
  end

  def libraries_menu
    if    library_choice == "1"
      libraries_index
    elsif library_choice == "2"
      library_new
    elsif library_choice == "3"
      library_show
    elsif library_choice == "4"
      library_edit
    elsif library_choice == "5"
      library_destroy
    elsif library_choice == "6"
      main_menu
    end
  end

 end
