=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.13.40
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::NotFoundError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NotFoundError' do
  before do
    # run before each test
    @instance = KoronaCloudClient::NotFoundError.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotFoundError' do
    it 'should create an instance of NotFoundError' do
      expect(@instance).to be_instance_of(KoronaCloudClient::NotFoundError)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACCOUNT_NOT_FOUND", "MODEL_ID_NOT_FOUND", "NUMBER_NOT_FOUND", "DATE_NOT_FOUND", "INDEX_NOT_FOUND", "CONDITION_MISMATCH"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.code = value }.not_to raise_error
      # end
    end
  end

end