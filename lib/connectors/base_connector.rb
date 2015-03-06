require 'socket'

class BaseConnector

  DEFAULT_IP  = "127.0.0.1"
  DEFAULT_PORT = 4913

  def initialize(options = {})
    @ip = options[:ip] || DEFAULT_IP
    @port = options[:port] || DEFAULT_PORT
    @socket = prepare_socket
  end

  def close
    @socket.close
  end
end
