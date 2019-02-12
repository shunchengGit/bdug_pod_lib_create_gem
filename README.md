# PodLibCreate

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pod_lib_create'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pod_lib_create

## Usage

At first time you use this tool, it will ask you some common questions. Then it will store the answers of all these questions in a config file placed pod_lib_create_config.yaml. Next time you create pod lib, it will use pod_lib_create.yaml to accelerate the creation process.

Questions:

1. What is your name?
2. What is your email?
3. What is your source code git homepage?
4. What is your source code git uri?
5. What is your class prefix?

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shunchengGit/pod_lib_create_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PodLibCreate project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/shunchengGit/pod_lib_create_gem/blob/master/CODE_OF_CONDUCT.md).
