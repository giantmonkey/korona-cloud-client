=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.14.7
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::ProductionType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductionType' do
  before do
    # run before each test
    @instance = KoronaCloudClient::ProductionType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductionType' do
    it 'should create an instance of ProductionType' do
      expect(@instance).to be_instance_of(KoronaCloudClient::ProductionType)
    end
  end
  describe 'test attribute "active"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "revision"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PRINT", "PRINT_MERGED", "TICKET_ACTIVATE", "TICKET_PRINT", "TICKET_ACTIVATE_PRINT", "TICKET_VALIDATE_PRINT", "KORONA_PREPAID", "KORONA_PREPAID_PRINT", "EXTERNAL_SYSTEM_CALL", "VOUCHER_PRINT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "trigger"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AFTER_PAYMENT", "IMMEDIATELY", "AFTER_BOOKING", "BEFORE_PAYMENT", "MANUAL_ONLY", "AFTER_PAYMENT_ONLY"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.trigger = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sub_producer"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "external_system_call"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
