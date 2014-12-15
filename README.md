# SerbiaZipCodes

Easy access to Serbia zip codes. You can search zip code by city, or city by zip code.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'serbia_zip_codes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install serbia_zip_codes

## Usage

Search city by zip code:
```
$ pry
[1] pry(main)> require 'serbia_zip_codes'
=> true
[2] pry(main)> SerbiaZipCodes.find_by_zip "15300"
=> [{"city"=>"Loznica", "zip_code"=>"15300"}]
```

Search zip code by city:

```
$ pry
[1] pry(main)> require 'serbia_zip_codes'
=> true
[2] pry(main)> SerbiaZipCodes.find_by_city "Loznica"
=> [{"city"=>"Loznica", "zip_code"=>"15300"}]
```

Return value is allways array, so you can get more than one result if your query is less precise:

```
[3] pry(main)> SerbiaZipCodes.find_by_city "Novi"
=> [{"city"=>"Novi Beograd", "zip_code"=>"11070"},
 {"city"=>"Belanovica", "zip_code"=>"14246"},
 {"city"=>"Mačvanski Pričinović", "zip_code"=>"15211"},
 {"city"=>"Lički Hanovi", "zip_code"=>"18245"},
 {"city"=>"Novi Sad", "zip_code"=>"21000"},
 {"city"=>"Stepanovićevo", "zip_code"=>"21212"},
 {"city"=>"Novi Banovci", "zip_code"=>"22304"},
 {"city"=>"Novi Karlovci", "zip_code"=>"22322"},
 {"city"=>"Novi Slankamen", "zip_code"=>"22323"},
 {"city"=>"Novi Itebej", "zip_code"=>"23236"},
 {"city"=>"Novi Bečej", "zip_code"=>"23272"},
 {"city"=>"Novi Kozarci", "zip_code"=>"23313"},
 {"city"=>"Novi Kneževac", "zip_code"=>"23330"},
 {"city"=>"Novi Zednik", "zip_code"=>"24223"},
 {"city"=>"Novi Kozjak", "zip_code"=>"26353"},
 {"city"=>"Aljinovici", "zip_code"=>"31307"},
 {"city"=>"Novi Pazar", "zip_code"=>"36300"}]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
