=begin

Implement an EventEmitter class with two methods, on() and trigger().
On allows you to 'subscribe' to an event, passing in a key as a parameter, 
and a Ruby block to be executed when this particular event is triggered.
The trigger method accepts a key as a parameter. 
The trigger method calls all blocks that have been subscribed to the key parameter. 
This method should return an array of all of the blocks for the key parameter.
triggering a key which has no subscribed blocks should return an empty array.

e = EventEmitter.new
e.trigger('key')
# => []

e = EventEmitter.new

e.on('foo') { puts 'foo' }
e.on('foo') { puts 'bar' }
e.on('foo') { puts 'baz' }

e.trigger('foo')
# => 'foo'
# => 'bar'
# => 'baz'

=end

class EventEmitter
  def initialize()
    @dict = Hash.new 
  end

  def on(key, &block)
    if @dict[key] == nil
      @dict[key] = [ block]
    else
      @dict[key].push(block)
    end
      return @dict
  end
  
  def trigger(key)
    @emptyArray = []
    if !(@dict[key])
      return @emptyArray
    else
      key_to_trigger = @dict[key]
      key_to_trigger.each do | each_block |
        each_block.call
      end
    end
  end
end


#Better_solution
class EventEmitter
  def initialize
    @subscribers = Hash.new{ |h, k| h[k] = [] }
  end

  def on(event, &block)
    @subscribers[event] << block
  end
  
  def trigger(event)
    @subscribers[event].each(&:call)
  end
end
