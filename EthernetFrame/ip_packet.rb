# frozen_string_literal: true

class IPPacket
  attr_reader :bytes

  def initialize
    @bytes = bytes
  end

  def version
    bytes[0] >> 4
  end
end
