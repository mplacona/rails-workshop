# Twilio Rails Workshop

- Create a new app
`rails new rails-sms`
- add `gem 'twilio-ruby'` to Gemfile
- run `bundle install`

## From terminal
$ cd app/controllers
$ touch twilio_controller.rb

## Back in the code
- add route to config/routes.rb
```
post 'twilio/voice' => 'twilio#voice'
get 'twilio/voice' => 'twilio#voice'
```

## Run
`rails server`

## Bonus
- Change the voice:
-- https://www.twilio.com/docs/api/twiml
- Change the language
-- https://www.twilio.com/docs/api/twiml/say

## Helpers
```
gem install twilio-ruby
gem install twilio-ruby
```
