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
require 'date'

# Unit tests for MessenteApi::SMS
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SMS' do
  before do
    # run before each test
    @instance = MessenteApi::SMS.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SMS' do
    it 'should create an instance of SMS' do
      expect(@instance).to be_instance_of(MessenteApi::SMS)
    end
  end
  describe 'test attribute "text"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sender"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "validity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "autoconvert"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["full", "on", "off"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.autoconvert = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "udh"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "channel"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
