###################################
######      NAMESPACE        #####
###################################

# Provides a container to hold things like methods, classes and constants as a way to group them together logically and to help avoid conflicts with other methods and classes that may have the same name,
#typically written by someone else (**Ahem, gems**).


###################################
######    EXAMPLE MODULE      #####
###################################

  #
  # module Perimeter #a namespace for when your class name is crappy and you only want something *righthere* - should also be CamelCased
  #   class Array
  #     def initialize
  #       @size = 400
  #     end
  #   end
  # end
  # #
  # our_array = Perimeter::Array.new #how to call that Array in module Perimeter
  # ruby_array = Array.new #regular array
  # #
  # p our_array.class
  # p ruby_array.class
  # #
  # p our_array.length #this gives an error bc .length is a method of regular arrays and not our module Array





###################################
#### WHY YOU SHOULD LOVE FAKER ###
###################################
#DOCUMENTATION
#https://github.com/stympy/faker#fakerhacker

# require "faker"
#
# puts Faker::Hacker.say_something_smart
# puts Faker::Hacker.adjective
# puts Faker::Hacker.verb

#Notice the format of how we're calling the functionality of the Faker gem, How is Faker's code structured? ** Inside modules



###################################
###### TRAVELLER GEM STEP ONE #####
###################################
#DOCUMENTATION:
#https://github.com/kqdreger/traveller

#Testing out the traveller gem!

#   require 'traveller'
#
#   traveller1 = Traveller.new("Seattle, Minnesota 98101")
#   puts traveller1
#   puts traveller1.city
#   puts traveller1.zip
#
#   traveller1.state = "Washington"
#   #
#   puts traveller1.state
#
#
# ###################################
# ###### TRAVELLER GEM STEP TWO #####
# ###################################
#
# #I want to create a new class for travellers, called traveller. What could possibly go wrong?
# module Expedia
#   class Traveller
#     attr_accessor :name, :email, :location
#     def initialize(details_hash)
#       @name = details_hash[:name]
#       @email = details_hash[:email]
#       @location = details_hash[:location]
#     end
#   end
# end
#
#   #Tests to use the Traveller Gem (after my class has been created. )
#     traveller2 = Traveller.new("Chicago 60611 IL")
#     puts traveller2.state
#     location = Traveller.new("Seattle, Washington 98122")
#
# user1 = Expedia::Traveller.new(name:"name",email:"email",location:location)

  #Hmm. It doesn't work. Oh bother.
  #How would we possibly fix this so I don't have to change the name of MY class but still be able to use this gem? ** put it in a module!



###################################
#########     CONSTANTS    ########
###################################

  #A Ruby constant is like a variable, except that its value is supposed to remain constant for the duration of the program. The Ruby interpreter does not actually enforce the constancy of constants, but it does issue a warning if a program changes the value of a constant

  #### NOTES ###

  # Constants defined within a class or module may be accessed anywhere within the class or module.

  # Outside the class or module, they may be accessed using the scope operator, :: prefixed by an expression that returns the appropriate class or module.

  # Constants defined outside any class or module may be accessed as it is or by using the scope operator with no prefix.

  # **Constants may not be defined in methods.**

  # Constants may be added to existing classes and modules from the outside by using the class or module name and the scope operator before the constant name.



module Blackjack
  MAX_SCORE = 21

  module Player
      MAX_PLAYERS = 2
      class Player
        def initialize
        end
      end
  end
  module Card
      MAX_VALUE = 13
      class Card
        def get_max_value() #reader
            return MAX_VALUE
        end
      end
  end
end

  MAX_SCORE = 50
  MAX_PLAYERS = 4
  MAX_VALUE = 21

  puts "MAX_SCORE - #{MAX_SCORE}" #this is the one from ln138
  puts "Blackjack::MAX_SCORE - #{Blackjack::MAX_SCORE}" # ln119
  #
  puts "MAX_Players - #{MAX_PLAYERS}" # ln139
  puts "Blackjack::Player::MAX_Players - #{Blackjack::Player::MAX_PLAYERS}" # ln122
  #
  puts "MAX_VALUE - #{MAX_VALUE}" # ln140
  puts "Blackjack::Card::get_max_value -  #{Blackjack::Card::Card.new().get_max_value()}" # ln129
