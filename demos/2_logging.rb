# Logging Module
module Logging

  def write(msg)
    file = open("logging.txt", "a")
    file.puts msg
    file.close
  end

end
