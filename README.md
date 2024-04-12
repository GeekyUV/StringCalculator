
# String Calculator Rspec Test Suite

this is a TDD for string calculator written in ruby on rails 

## Testing
- test the module under lib/string_calculator.rb


# Getting Started

- clone the repository

```bash
git clone https://github.com/GeekyUV/StringCalculator.git

```

- installed the required Gem for rspec(Gems for Rpec included in gemfile)
```
bundle install
```


check test cases

- run this command
```
bundle exec rspec 
```
- all test cases are covered to check coverage run the following command in app directory

```
 open coverage/index.html
```


#### you are ready to go! 
- this is is implementation for Rspec gem test unit suites 

### Guide to Rspec installation 
- add these in your gemfile.rb
```
gem 'rspec-rails'
gem 'simplecov', require: false
gem 'rails-controller-testing' #for assert template
```
-run bundle install to install dependencies
```
bundle install
```
- install rspec run this command to add spec folder in which we will write test cases 
```
rails generate rspec:install
```

- Create spec files for your controllers, models, and any other components you want to test. For example, you can create a spec file for your controller name yuvicontroller then spec file name would be yuvicontroller_spec.rb

- run bundle exec rspec to run test files
- to check covergae open coverage/index.html

#### Happy learning! :)




