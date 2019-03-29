require 'gstin_validation'

Rspec.describe Spree::Gstin do
  describe "Test gem"
    it "should be a valid gstin number" do
      expect(GstinValidation.validate_gstin_pattern('29ADTPC8477F1ZX')).to be true
    end

    it "should check for invalid gstin" do
      expect(GstinValidation.validate_gstin_pattern('29ADTPC8477F1ZQ')).to be false
    end
  end
end
