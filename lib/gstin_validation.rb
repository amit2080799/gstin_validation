class GstinValidation
  def self.validate_gstin_number(number)
    factor = 2
    sum = 0
    mod_chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    checksum_digit = number[0..13]
    mod_chars_collection = mod_chars.chars
    gstin = checksum_digit.strip.upcase.chars
    mod = mod_chars_collection.length
    sum = calculate_sum(gstin, mod, factor, sum, mod_chars_collection)
    checksum_digit_index = (mod - (sum % mod)) % mod
    return true if mod_chars_collection[checksum_digit_index].eql? number[-1]
    false
  end

  def self.calculate_sum(gstin, mod, factor, sum, mod_chars_collection)
    gstin.reverse.each do |gstin_character|
      weight = -1
      mod_chars_collection.each_with_index { |mod_character, index| weight = index if gstin_character.eql? mod_character }
      digit = factor * weight
      factor = factor == 2 ? 1 : 2
      digit = (digit / mod) + (digit % mod)
      sum += digit
    end
    sum
  end
end
