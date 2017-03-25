require 'csv'
class Person
  attr_reader "name", "phone_number", "address", "position", "salary", "slack_account", "github_account"

  def initialize(name, phone_number, address, position, salary, slack_account, github_account)
    @name = name
    @phone_number = phone_number
    @address = address
    @position = position
    @salary = salary
    @slack_account = slack_account
    @github_account = github_account
  end
end

class Database
  attr_reader "people"

  def initialize
    @people = []
  end

  def add_people

    puts "Please provide the name of the person you are adding"
    name = gets.chomp

    if @people.find{ |person| person.name == name}
      puts "That person is already in the system"

    else
      puts "Please provide the phone number of the person you are adding "

      phone_number = gets.chomp

      puts " Please provide the address of the person you are trying to add"

      address = gets.chomp

      puts "Please provide the position of the person you are adding"

      position = gets.chomp

      puts "Please provide the salary of the person you are adding"

      salary = gets.chomp

      puts "Please provide the slack account of the person you are adding"

      slack_account = gets.chomp

      puts "Please provide the GitHub account for the person you are adding"

      github_account = gets.chomp

      person = Person.new(name, phone_number, address, position, salary, slack_account, github_account)

      @people << person

     end
  end
end

def look_for_people

  puts "What name do you want to search for?"
  search_name = gets.chomp

  found_person = @people.find { |person| person.name == search_name }

  if found_person
    puts "Name #{found_person.name}"
    puts "Phone_number #{found_person.phone_number}"
    puts "Address #{found_person.address}"
    puts "Position #{found_person.position}"
    puts "Salary #{found_person.salary}"
    puts "Slack_account #{found_person.slack_account}"
    puts "github_account #{found_person.github_account}"
  else
    puts " Sorry but that name is not in our database."
  end
end

def delete_people

  puts "Please enter the name you would like to delete"
  delete_name = gets.chomp

  delete_person = people.delete_if {|person| person.name == delete_name}
  if delete_person
    puts " Thank you, #{delete_name} has been deleted from the data base"
  else
    puts "Sorry that name does not exist in our system."
  end
end

database = Database.new

loop do
  puts "add a person"
  puts "search a person"
  puts "delete a person"
  puts "Report of database"

  choice = gets.chomp

  if choice == "a"
    database.add_people
  end

  if choice == "s"
    database.look_for_people
  end

  if choice == "d"
    database.delete_people
  end
end
  #   puts "Please enter the name you would like to delete"
  #   delete_name = gets.chomp
  #
  #   delete_person = people.delete_if {|person| person.name == delete_name}
  #   if delete_person
  #     puts " Thank you, #{delete_name} has been deleted from the data base"
  #   else
  #     puts "Sorry that name does not exist in our system."
  #   end
  # end
  # if choice == "r"
  #   puts "#{people}"
  # end

    # puts "What name do you want to search for?"
    # search_name = gets.chomp
    #
    # found_person = people.find { |person| person.name == search_name }
    #
    # if found_person
    #   puts "Name #{found_person.name}"
    #   puts "Phone_number #{found_person.phone_number}"
    #   puts "Address #{found_person.address}"
    #   puts "Position #{found_person.position}"
    #   puts "Salary #{found_person.salary}"
    #   puts "Slack_account #{found_person.slack_account}"
    #   puts "github_account #{found_person.github_account}"
    # else
    #   puts " Sorry but that name is not in our database."
  #   end
  # end

  # if choice == "d"
#     puts "Please enter the name you would like to delete"
#     delete_name = gets.chomp
#
#     delete_person = people.delete_if {|person| person.name == delete_name}
#     if delete_person
#       puts " Thank you, #{delete_name} has been deleted from the data base"
#     else
#       puts "Sorry that name does not exist in our system."
#     end
#   end
#   if choice == "r"
#     puts "#{people}"
#   end
# end
