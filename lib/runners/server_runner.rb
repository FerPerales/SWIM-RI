require_relative '../../lib/connectors/server_connector.rb'
require_relative '../../lib/message.rb'

connector = ServerConnector.new(ip: "127.0.0.1", port: 4913)
loop do
  data = connector.receive_message(1024)
  response = Message.new(data)
  puts "Message received: #{response.message} from #{response.origin}"
end
