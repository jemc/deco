
require 'monitor'

def deco(meth, &user_block)
  m = instance_method(meth)
  
  Thread.current[:__deco_stack__] ||= []
  
  define_method(meth) do |*args, &block|
    Thread.current[:__deco_stack__].push(m.bind(self))
    user_block.call *args, &block
  end
end

def deco_super(*args, &block)
  return Thread.current[:__deco_stack__].pop.call(*args, &block)
end

