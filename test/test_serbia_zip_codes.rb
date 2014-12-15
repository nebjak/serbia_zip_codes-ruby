require 'test/unit'
require 'serbia_zip_codes'

class SerbiaZipCodesTest < Test::Unit::TestCase
  def test_search_by_zip
    small_result = [{"city"=>"Loznica", "zip_code"=>"15300"}]
    big_result = [
      {"city"=>"Loznica", "zip_code"=>"15300"},
      {"city"=>"Korenita", "zip_code"=>"15302"},
      {"city"=>"Tršić", "zip_code"=>"15303"},
      {"city"=>"Petlovača", "zip_code"=>"15304"},
      {"city"=>"Lipolist", "zip_code"=>"15305"},
      {"city"=>"Prnjavor Mačvanski", "zip_code"=>"15306"},
      {"city"=>"Lešnica", "zip_code"=>"15307"},
      {"city"=>"Jadranska Lešnica", "zip_code"=>"15308"},
      {"city"=>"Brezjak", "zip_code"=>"15309"}
    ]
    assert_equal small_result, SerbiaZipCodes.find_by_zip("15300")
    assert_equal big_result, SerbiaZipCodes.find_by_zip("1530")
  end

  def test_search_by_city
    small_result = [{"city"=>"Novi Beograd", "zip_code"=>"11070"}]
    big_result = [
      {"city"=>"Beograd", "zip_code"=>"11000"},
      {"city"=>"Beograd Vozdovac", "zip_code"=>"11010"},
      {"city"=>"Beograd Čukarica", "zip_code"=>"11030"},
      {"city"=>"Beograd Zvezdara", "zip_code"=>"11050"},
      {"city"=>"Beograd Palilula", "zip_code"=>"11060"},
      {"city"=>"Novi Beograd", "zip_code"=>"11070"},
      {"city"=>"Beograd Zemun", "zip_code"=>"11080"},
      {"city"=>"Beograd Rakovica", "zip_code"=>"11090"},
      {"city"=>"Mali Beograd", "zip_code"=>"24309"}
    ]
    assert_equal small_result, SerbiaZipCodes.find_by_city("Novi Beograd")
    assert_equal small_result, SerbiaZipCodes.find_by_city("novi beograd")
    assert_equal small_result, SerbiaZipCodes.find_by_city("NOVI BEOGRAD")
    assert_equal small_result, SerbiaZipCodes.find_by_city("NoVi BeOgRad")
    assert_equal big_result, SerbiaZipCodes.find_by_city("beograd")
  end
end
