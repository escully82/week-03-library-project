require_relative "config/environment.rb"
require "active_record"
require "pry"
require "yaml"
require_relative "lib/library.rb"


def main_menu
  puts "\n\nHere are your choices:\n
  1. Libraries
  2. Books
  3. Patrons
  4. Staffers\n\n"


  choice = gets.chomp.to_i

  while choice != 1 && choice != 2 &&
        choice != 3 && choice != 4
    puts "\n\nNot a valid option. Please enter: 1, 2, 3, or 4 Thank you!\n\n"
    choice = gets.chomp.to_i
  end

  if choice    == 1
    libraries_menu
    puts "\n\nWhat would you like to do?\n\n
    1. View Library List
    2. Create Library
    3. Show a Library
    4. Edit a Library
    5. Demolish a Library
    6. Return to Main Menu"
      library_choice = gets.chomp.to_i
      while library_choice != 1 && library_choice != 2 &&
            library_choice != 3 && library_choice != 4 &&
            library_choice != 5 && library_choice != 6
            puts "\n\nNot a valid option. Please enter: 1, 2, 3, 4, 5, or 6. Thank you.\n\n"
      library_choice = gets.chomp.to_i
      end
  elsif choice == 2
    books_menu
  elsif choice == 3
    patrons_menu
  elsif choice == 4
    staffers_menu
  end

end


puts "\n\nHello and welcome to Library Manager 5000!\n\n"

main_menu

binding.pry


#choice = gets.chomp
#
#while choice != "1" && choice != "2" && choice != "3"
#  puts "\n\nThat is not a valid option. Please enter: 1, 2, or 3.\n\n"
#  choice = gets.chomp.downcase
#end
#
#if choice == "1"
#  puts "List of Libraries"
#elsif choice == "2"
#  puts "Add a Library"
#elsif choice == "3"
#  puts "Go to Options Menu"
#end
