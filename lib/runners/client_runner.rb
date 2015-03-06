require_relative '../../lib/connectors/client_connector.rb'

ip = ARGV[0] || '127.0.0.1'
port = ARGV[1] || 4913

connector = ClientConnector.new(ip: ip, port: port)
loop do
  print "Message: "
  message = $stdin.gets.chomp
  connector.send_message(message)
end


