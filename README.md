# Pludoni::Rubocop

Rubocop shared Gem config for our company projects

## Installation

Install the gem and add to the application's Gemfile by executing:

    bundle add pludoni-rubocop --git https://github.com/pludoni/pludoni-rubocop.git

## Usage

Add to ``.rubocop.yml``:

```yaml
inherit_gem:
  pludoni-rubocop:
    - default.yml
    - rails.yml
```


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
