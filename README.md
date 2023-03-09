# Pludoni Rubocop

[![Gem Version](https://badge.fury.io/rb/pludoni-rubocop.svg)](https://badge.fury.io/rb/pludoni-rubocop)

Rubocop shared Gem config for our company projects

## Installation

Install the gem and add to the application's Gemfile by executing:

    bundle add pludoni-rubocop --git https://github.com/pludoni/pludoni-rubocop.git

Or add manually to Gemfile:

```ruby
group :development, :test do
  gem 'pludoni-rubocop', require: false
end
```

## Usage

Add to ``.rubocop.yml``:

```yaml
inherit_gem:
  pludoni-rubocop:
    - default.yml
    - rails.yml
    - betterlint.yml
```

If you have a ``.codeclimate.yml`` change it to match the Rubocop version:

```yaml
# .codeclimate.yml
plugins:
  rubocop:
    enabled: true
    channel: rubocop-1-48
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
