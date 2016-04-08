require 'twilio-ruby'

class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

  def voice
  	response = Twilio::TwiML::Response.new do |r|
  	  r.Say 'Hey there. Congrats on integrating Twilio into your Rails app.', :voice => 'alice'
         r.Play 'http://linode.rabasa.com/cantina.mp3'
  	end

    render xml: response.text
  end

  def sms
    @twilio_number = ENV['TWILIO_NUMBER']
  	@client = Twilio::REST::Client.new ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]

    message = @client.account.messages.create(
        :from => @twilio_number,
        :to => ENV['MY_NUMBER'],
        :body => "Hello Ms. Ruby"
    )

    render json: message.sid
  end
end
