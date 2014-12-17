require 'yaml'

module SerbiaZipCodes
  @data = YAML.load_file File.join(File.dirname(__FILE__),"data/serbia_zip_codes.yaml")

  # Search for city by zip code
  #
  # @param zip [String] zip code in string format
  # @return [Array] result as array of hashes
  def self.find_by_zip(zip = nil)
    @data.select { |d| d["zip_code"].match /#{zip}/i }
  end

  # Search for zip code by city
  #
  # @param city [String] city name in string format
  # @return [Array] result as array of hashes
  def self.find_by_city(city = nil)
    @data.select { |d| d["city"].match /#{city}/i }
  end
end
