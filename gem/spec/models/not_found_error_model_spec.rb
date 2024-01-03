=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 3.1.64
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::NotFoundErrorModel
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::NotFoundErrorModel do
  let(:instance) { KoronaCloudClient::NotFoundErrorModel.new }

  describe 'test an instance of NotFoundErrorModel' do
    it 'should create an instance of NotFoundErrorModel' do
      expect(instance).to be_instance_of(KoronaCloudClient::NotFoundErrorModel)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACCOUNT_NOT_FOUND", "MODEL_ID_NOT_FOUND", "NUMBER_NOT_FOUND", "DATE_NOT_FOUND", "INDEX_NOT_FOUND", "CONDITION_MISMATCH"])
      # validator.allowable_values.each do |value|
      #   expect { instance.code = value }.not_to raise_error
      # end
    end
  end

end