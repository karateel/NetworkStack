# frozen_string_literal: true

class EthernetFrame
  attr_reader :bytes

  def initialize
    @bytes = bytes
  end

  def destination_mac
    format_mac(bytes[0, 6])
  end

  def source_mac
    format_mac(bytes[6, 6])
  end

  private
  def format_mac(mac_bytes)
    mac_bytes.map do |byte|
      byte.to_s(16).rjust(2, '0')
    end.join(':').upcase
  end
end

def data
  ip_packet = IPPacket.new
  ip_packet.bytes([14...-4])
end