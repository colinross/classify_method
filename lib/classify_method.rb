module ClassifyMethod
  def self.included(_mod)
    @included_klass = self
  end

  def self.included_klass
    @included_klass
  end

  def classify_method(original_method)
    ClassedMethod.new(original_method, self.included_klass)
  end

  class ClassedMethod
    def initialize(original_method, original_klass, options)
      @original_method = original_method
      @original_klass = original_klass
      @options = options
    end

  end
end
