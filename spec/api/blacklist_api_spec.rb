=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services. Use Messente API library to send and receive SMS, Viber and WhatsApp messages, blacklist phone numbers to make sure you're not sending any unwanted messages, manage contacts and groups.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.0.2
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MessenteApi::BlacklistApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BlacklistApi' do
  before do
    # run before each test
    @api_instance = MessenteApi::BlacklistApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BlacklistApi' do
    it 'should create an instance of BlacklistApi' do
      expect(@api_instance).to be_instance_of(MessenteApi::BlacklistApi)
    end
  end

  # unit tests for add_to_blacklist
  # Adds a phone number to the blacklist
  # @param number_to_blacklist Phone number to be blacklisted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_to_blacklist test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_from_blacklist
  # Deletes a phone number from the blacklist
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_from_blacklist test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_blacklist
  # Returns all blacklisted phone numbers
  # @param [Hash] opts the optional parameters
  # @return [FetchBlacklistSuccess]
  describe 'fetch_blacklist test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for is_blacklisted
  # Checks if a phone number is blacklisted
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'is_blacklisted test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
