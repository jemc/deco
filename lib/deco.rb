require 'monitor'

class DecoMethod
  
  attr_accessor :args
  attr_accessor :block
  
  def initialize(callable)
    @internal = callable
  end
  
  def call
    @internal.call(*@args, &block)
  end
end


def deco(meth, &user_block)
  m = instance_method(meth)
  
  define_method(meth) do |*args, &block|
    
    d = DecoMethod.new(m.bind(self))
    d.args  = args
    d.block = block
    
    user_block.call d
  end
  
end
