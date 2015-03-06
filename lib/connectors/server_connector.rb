require_relative '../../lib/connectors/base_connector.rb'

class ServerConnector < BaseConnector

  def prepare_socket
    socket = UDPSocket.new
    socket.bind @ip, @port
    socket
  end

  def receive_message(limit = 10)
    @socket.recvfrom(limit)
  end

end
