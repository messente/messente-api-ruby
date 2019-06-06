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

# Unit tests for MessenteApi::ContactsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactsApi' do
  before do
    # run before each test
    @api_instance = MessenteApi::ContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactsApi' do
    it 'should create an instance of ContactsApi' do
      expect(@api_instance).to be_instance_of(MessenteApi::ContactsApi)
    end
  end

  # unit tests for add_contact_to_group
  # Adds a contact to a group
  # @param group_id String in UUID format
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'add_contact_to_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_contact
  # Creates a new contact
  # @param contact_fields 
  # @param [Hash] opts the optional parameters
  # @return [ContactEnvelope]
  describe 'create_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_contact
  # Deletes a contact
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_contact
  # Lists a contact
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [ContactEnvelope]
  describe 'fetch_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_contact_groups
  # Lists groups of a contact
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [GroupListEnvelope]
  describe 'fetch_contact_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_contacts
  # Returns all contacts
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :group_ids Optional one or many group id strings in UUID format. For example: \&quot;/contacts?groupIds&#x3D;group_id_one&amp;groupIds&#x3D;group_id_two\&quot; 
  # @return [ContactListEnvelope]
  describe 'fetch_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_contact_from_group
  # Removes a contact from a group
  # @param group_id String in UUID format
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_contact_from_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_contact
  # Updates a contact
  # @param phone A phone number
  # @param contact_update_fields 
  # @param [Hash] opts the optional parameters
  # @return [ContactEnvelope]
  describe 'update_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
