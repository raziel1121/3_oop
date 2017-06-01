# Logging Module
module Logging

  def self.included(klass)
    puts "(Logging has been activated by #{klass.name})"
  end

  def write(msg)
    file = open("logging.txt", "a")
    file.puts msg
    file.close
  end

end
