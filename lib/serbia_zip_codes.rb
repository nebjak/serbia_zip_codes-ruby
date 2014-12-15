require 'yaml'

class SerbiaZipCodes
  def self.load_data
    @data = YAML.load_file File.join(File.dirname(__FILE__),"data/serbia_zip_codes.yaml")
  end

  def self.find_by_zip(zip = nil)
    load_data
    @data.select { |d| d["zip_code"].match /#{zip}/i }
  end

  
  def self.find_by_city(city = nil)
    load_data
    @data.select { |d| d["city"].match /#{city}/i }
  end
end
