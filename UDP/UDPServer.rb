# frozen_string_literal: true
require 'socket'

BUFFER_SIZE = 1024

socket = UDPSocket.new
socket.bind('localhost', 4321)

puts 'Server is running on localhost:12345'

loop do
  message, sender = socket.recvfrom(BUFFER_SIZE)

  port = sender[1]
  host = sender[2]

  puts "Received: #{message} from #{host}:#{port}"
end
