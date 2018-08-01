require 'minitest/autorun'

describe ClassifyMethod do
  let(:class_alpha) { Class.new { include ClassifyMethod } }
  let(:class_beta) { Class.new { include ClassifyMethod } }

  describe "included_klass" do
    it "distinct module instances with thier own variable space" do
      refute class_alpha === class_beta
      refute class_alpha.class.included_klass == class_beta.class.included_klass
    end
  end

  #describe "classify_method" do

  #end
end
