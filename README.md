# Persistence::Assistant

Sometimes you'll find yourself writing little programs that need access to Rails persistence, but you won't want to put them into your Rails project.  Then you'll find yourself eventually writing and rewriting database connectivity code in order to tie into that persistence.

Include Persistance Assistant to quickly reuse your existing `database.yml` files to generate persistence URIs or config info.  Don't worry about parsing those files manually again!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'persistence-assistant'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install persistance-assistant

## Usage

It's pretty simple.

```ruby
uri = Persistence::Assistant::URI('/path/to/a/database.yml')
# => mysql://user:pass@address:port/database

require 'sequel'
connection = Sequel.connect(uri)
```

## Development

After checking out the repo, run `script/setup` to install dependencies. Then, run `script/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/esmevane/persistence-assistant/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
