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

# Unit tests for KoronaCloudClient::CashierRole
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CashierRole' do
  before do
    # run before each test
    @instance = KoronaCloudClient::CashierRole.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CashierRole' do
    it 'should create an instance of CashierRole' do
      expect(@instance).to be_instance_of(KoronaCloudClient::CashierRole)
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

  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["BLANK_RECEIPT", "CASH_DRAWER", "CANCEL_ITEM", "CANCEL_RECEIPT", "DELETE_RECEIPT", "FOREIGN_RECEIPT", "PRICE", "REPORTS", "REVISION", "CANCEL_LAST_RECEIPT_ITEM", "RETURN", "TERMINATE_BREAK_LOCK", "EXTERNAL_POINT_OF_SALE", "MDE_ADMIN"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.permissions = value }.not_to raise_error
      # end
    end
  end

end
