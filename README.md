# Scriptify

[![Build Status](https://travis-ci.org/xnt/scriptify.svg?branch=master)](https://travis-ci.org/xnt/scriptify)

Transforms a text/string into a reasonably accurate uppercase representation.

```ruby
"hello".superscript
```

Results in:

```ruby
"ʰᵉˡˡᵒ"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scriptify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scriptify

## Usage

```ruby
class String
  include Scriptify
end
```

And then

```ruby
"abc".superscript
```

## Opts

* **fallback_lower** - bool, default `false`, determines if we should try to get a lowercase
  representation of that letter. Consider that lowercase superscripts are more common than uppercase
* **replace_unknown** - char/bool, default `false`, determines what to replace unknown (i.e. not
  found) characters with. If `falsey`, then the characters will be kept in the string. If you want to
  remove not-found characters, simply pass an empty string

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/xnt/scriptify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Scriptify project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/scriptify/blob/master/CODE_OF_CONDUCT.md).
