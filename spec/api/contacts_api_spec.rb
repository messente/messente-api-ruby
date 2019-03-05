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

# Unit tests for MessenteApi::ContactsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactsApi' do
  before do
    # run before each test
    @instance = MessenteApi::ContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactsApi' do
    it 'should create an instance of ContactsApi' do
      expect(@instance).to be_instance_of(MessenteApi::ContactsApi)
    end
  end

  # unit tests for add_contact_to_group
  # Adds a contact to a group.
  # @param group_id String in uuid format.
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'add_contact_to_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_contact
  # Creates a new contact.
  # @param contact_fields 
  # @param [Hash] opts the optional parameters
  # @return [ContactEnvelope]
  describe 'create_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_contact
  # Deletes a contact.
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_contact
  # Lists a contact.
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [ContactEnvelope]
  describe 'fetch_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_contact_groups
  # Lists groups of a contact.
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [GroupListEnvelope]
  describe 'fetch_contact_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_contacts
  # Returns all contacts.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :group_ids Optional one or many group id strings in uuid format. For example: \&quot;/contacts?groupIds&#x3D;group_id_one&amp;groupIds&#x3D;group_id_two\&quot; 
  # @return [ContactListEnvelope]
  describe 'fetch_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_contact_from_group
  # Remove a contact from a group.
  # @param group_id String in uuid format.
  # @param phone A phone number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_contact_from_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_contact
  # Updates a contact.
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
