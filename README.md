# capistrano::dotnet

.NET Core support for Capistrano 3.x

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-dotnet'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-dotnet

## Usage

Require in `Capfile` to use the default task:

```ruby
require 'capistrano/dotnet'
```

The task will run before `deploy:updated` as part of Capistrano's default deploy.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
