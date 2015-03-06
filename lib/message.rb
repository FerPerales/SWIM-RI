class Message < Struct.new :data

  def message
    data[0]
  end

  def origin
    data[1].join(',')
  end
end
