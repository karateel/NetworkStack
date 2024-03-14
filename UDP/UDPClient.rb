# frozen_string_literal: true
require 'socket'

client = UDPSocket.new
client.connect('localhost', 4321)

puts 'Write short message:'
message = gets
client.send(message, 0)

puts "Sent: #{message}"