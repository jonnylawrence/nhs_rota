# blog/app/services/publisher.rb
class Publisher
  # In order to publish message we need a exchange name.
  # Note that RabbitMQ does not care about the payload -
  # we will be using JSON-encoded strings
  def self.publish(exchange, message = {})
    # grab the fanout exchange
    #x = channel.fanout("rota.#{exchange}")

conn = Bunny.new
conn.start
ch = conn.create_channel
q = ch.queue("rota")
ch.default_exchange.publish(message.to_json,:persistent => true, :routing_key => q.name)

  end

  def self.channel
    @channel ||= connection.create_channel
  end

  # We are using default settings here
  # The `Bunny.new(...)` is a place to
  # put any specific RabbitMQ settings
  # like host or port
  def self.connection
    @connection ||= Bunny.new.tap do |c|
      c.start
    end
  end
end
