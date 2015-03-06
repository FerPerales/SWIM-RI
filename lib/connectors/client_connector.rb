require_relative '../../lib/connectors/base_connector.rb'

class ClientConnector < BaseConnector

  def prepare_socket
    UDPSocket.new
  end

  def send_message(message)
    @socket.send message, 0, @ip, @port
  end

end
