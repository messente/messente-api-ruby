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

# Unit tests for MessenteApi::ContactListEnvelope
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactListEnvelope' do
  before do
    # run before each test
    @instance = MessenteApi::ContactListEnvelope.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactListEnvelope' do
    it 'should create an instance of ContactListEnvelope' do
      expect(@instance).to be_instance_of(MessenteApi::ContactListEnvelope)
    end
  end
  describe 'test attribute "contacts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
