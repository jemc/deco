
require_relative 'lib/deco'

class A
  def foo(bar, baz=nil, sound:'argh')
    puts
    puts "bar is #{bar}"
    puts "baz is #{baz}" unless baz.nil?
    puts "sound is #{sound}"
    yield if block_given?
    puts "this is the end of the original foo..."
    puts
  end
end

A.new.foo('bar') { puts 'original block here' }

class A
  deco :foo do |*args, **kwargs, &block|
    puts
    puts ">> pre-foo"
    args[1] = "bazular"
    kwargs[:sound] = "ARGH!!"
    deco_super *args, **kwargs, &block
    puts "<< post-foo"
    puts
  end
end

A.new.foo('bar') { puts 'original block here' }
