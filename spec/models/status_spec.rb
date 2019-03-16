=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services. Use Messente API library to send and receive SMS, Viber and WhatsApp messages, blacklist phone numbers to make sure you're not sending any unwanted messages, manage contacts and groups.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

OpenAPI spec version: 0.0.1
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MessenteApi::Status
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Status' do
  before do
    # run before each test
    @instance = MessenteApi::Status.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Status' do
    it 'should create an instance of Status' do
      expect(@instance).to be_instance_of(MessenteApi::Status)
    end
  end
end
