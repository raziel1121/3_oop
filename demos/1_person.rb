# # Code goes here
require_relative "2_logging"

class Person

  include Logging

  attr_accessor :last_name
  attr_accessor :first_name
  attr_accessor :sport

  def initialize(favorite_sport = "hockey")
    @sport = favorite_sport
    write("Someone likes #{@sport}")
  end

  def to_s
    return "#{full_name} likes #{sport}"
  end

  def full_name
    write("Someone called full_name")
    return "#{self.first_name} #{self.last_name}"
  end
end
#
# jeff = Person.new
# jeff.first_name = "Jeff"
# puts jeff.first_name
#
#

class Employee < Person

  attr_accessor :salary

  def self.titles
    return ["Worker", "Manager", "Clown"]
  end

  def do_work
    write("I did some work today!")
  end

end
obj = Employee.new
obj.do_work
