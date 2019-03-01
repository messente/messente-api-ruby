=begin
#Messente API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 0.0.1
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for MessenteApi::OmnimessageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OmnimessageApi' do
  before do
    # run before each test
    @instance = MessenteApi::OmnimessageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OmnimessageApi' do
    it 'should create an instance of OmnimessageApi' do
      expect(@instance).to be_instance_of(MessenteApi::OmnimessageApi)
    end
  end

  # unit tests for cancel_scheduled_message
  # Cancels a scheduled Omnimessage.
  # @param omnimessage_id UUID of the scheduled Omnimessage to be cancelled
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel_scheduled_message test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_omnimessage
  # Sends an Omnimessage.
  # @param omnimessage Omnimessage to be sent
  # @param [Hash] opts the optional parameters
  # @return [OmniMessageCreateSuccessResponse]
  describe 'send_omnimessage test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
