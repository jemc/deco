
require_relative 'lib/deco'

class A
  
  def foo; puts "foo"; end
  
  deco :foo do |d|
    puts "whup"
    d.call
    puts "puhw"
  end
  
end

A.new.foo
