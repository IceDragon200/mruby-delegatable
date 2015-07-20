assert "Delegatable" do
  module A
    def self.a
      "ITS OVER "
    end
  end

  class B
    def b
      9000
    end
  end

  class C
  end

  class Thing
    extend Delegatable

    delegate :a, to: :A
    delegate :b, to: :@b

    def initialize
      @b = B.new
    end

    def phrase
      a + b.to_s
    end
  end

  assert_equal(Thing.new.a, "ITS OVER ")
  assert_equal(Thing.new.b, 9000)
  assert_equal(Thing.new.phrase, "ITS OVER 9000")
end
