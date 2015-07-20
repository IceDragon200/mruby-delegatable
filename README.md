mruby-delegatable
=================

## Usage:

```ruby
class OtherClass
  def a
    puts "Hi"
  end

  def b
    puts "How"
  end

  def c
    puts "Are ya"
  end
end

class MyClass
  extend Delegatable

  delegate :a, :b, :c, to: :@d

  def initialize
    @d = OtherClass.new
  end
end

e = MyClass.new
e.a
e.b
e.c
```

## Credits
Rails team for their Delegation module extension, which I copied from active_support and made it an extension module.
