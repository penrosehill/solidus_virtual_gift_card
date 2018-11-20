module Spree::RedemptionCodeGenerator
  def self.generate_redemption_code
    chars = [('A'..'Z'), ('0'..'9')].map(&:to_a).flatten - omitted_chars
    16.times.map { chars[rand(chars.count)] }.join
  end

  def self.format_redemption_code_for_lookup(redemption_code)
    redemption_code.delete('-').upcase
  end

  private

  def self.omitted_chars
    %w[O L I B 0 1 8]
  end
end
