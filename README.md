# Rock Solid

`rock-solid` is a simple solid commerce API integration tool.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rock-solid', git: 'https://github.com/reertech/rock-solid'
```

And then execute:

    $ bundle

## Usage

Configure it:
```ruby
RockSolid.configure do |config|
  config.app_key = 'your solid commerce API app key'
  config.secret_key = 'your solid commerce API secret key'
end
```

Use it:
Get all products from store:
```ruby
RockSolid::Repositories::ListItem.new.find_by_list_name('store name')
```

Get product details:
```ruby
RockSolid::Repositories::Product.new.get_details_by_id("product's sku")
```

Get all product images:
```ruby
RockSolid::Repositories::ProductImage.new.get_all_by_sku("product's sku")
```


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
