require_relative "config/environment.rb"
require "active_record"
require "pry"
require "yaml"
require_relative "lib/library.rb"

##              Main METHOD!!!            ##

## This is the Main Menu method.
## There is input, through gets.chomp.

def main_menu
  choice = ""

  while choice != "5"
    puts "\n\nMain Menu:\n
    1. Libraries
    2. Books
    3. Patrons
    4. Staffers
    5. Exit Program\n\n"
    puts "Please make a selection.\n\n "
    choice = gets.chomp.downcase

    while
      choice != "1" && choice != "2" &&
      choice != "3" && choice != "4" && choice != "5"
      puts "\n\nNot a valid option. Please enter: 1, 2, 3, 4, or 5. Thank you!\n\n"
      choice = gets.chomp.downcase
    end

    if choice    == "1"
      libraries_menu # method call
    elsif choice == "2"
      books_menu
    elsif choice == "3"
      patrons_menu
    elsif choice == "4"
      staffers_menu
    elsif choice == "5"
      print "Thanks for stopping by!"
    end
  end

end

##########################################

##              LIBRARY METHODS!!!            ##

## Library methods will be defined in this block.

# + Library Main Menu
# + List of libraries
# + Show Library
# + Edit Library
# + Remove Library

## There is input, through gets.chomp.

# libraries_menu method

def libraries_menu
  choice = ""

  while choice != "6"
    puts "\n\nLibrary Main Menu:\n
    1. Find your Branch
    2. Add new Library
    3. Show Library
    4. Edit Library
    5. Remove Library
    6. Return to Main Menu\n\n"
    puts "Please make a selection. \n\n"
    choice = gets.chomp.downcase

    while choice != "1" && choice != "2" && choice != "3" &&
          choice != "4" && choice != "5" && choice != "6"
          puts "\n\nNot a valid option. Please enter: 1, 2, 3, 4, 5, or 6 Thank you!\n\n"
          choice = gets.chomp.downcase
    end

    if    choice == "1"
      library_index #--- library_index method defined -----#
    elsif choice == "2"
      library_new
    elsif choice == "3"
      library_show
    elsif choice == "4"
      library_edit
    elsif choice == "5"
      library_destroy
    elsif choice == "6"
      puts "Thanks, come again!"
    end
  end
end

##+++++++++++++++++++++++++++++##

# library_list method

def library_index
  choice = ""

  while choice != "2"
    puts "\n\nLibrary List:\n
    1. View
    2. Return to Main Menu.\n\n"
    puts "Please make a selection.\n\n"
    choice = gets.chomp.downcase

    while choice != "1" && choice != "2"
      puts "\n\nNot a valid option. Please enter: 1 or 2. Thank you!\n\n"
      choice = gets.chomp.downcase
    end

    if    choice == "1"
      display_libraries
    elsif choice == "2"
      puts "Thanks, come again!"
    end
  end
end

##+++++++++++++++++++++++++++++##

# library_new method. This option will allow user to create a new library

def library_new
  choice = ""

  while choice != "2"
    puts "\n\nMake New Library:
    1. Create Library
    2. Return to Main Menu\n\n"
    puts "Please make a selection.\n\n"
    choice = gets.chomp.downcase

    while choice != "1" && choice != "2"
      puts "\n\nNot a valid option. Please enter: 1 or 2. Thank you!\n\n"
      choice = gets.chomp.downcase
    end

    if    choice == "1"
      create_library
    elsif choice == "2"
      puts "Thanks, come again!"
    end
  end
end


## Unprompted greeting. The first thing that a user should see.

puts "\n\nHello and welcome to Library Manager 5000!\n\n"

##########################################

## Beginning of called methods.

main_menu

##########################################

## Our farewell message for when user exits program

puts "\n\nGoodbye!\n\n"

##########################################

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
