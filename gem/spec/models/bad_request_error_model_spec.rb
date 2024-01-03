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

# Unit tests for KoronaCloudClient::BadRequestErrorModel
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::BadRequestErrorModel do
  let(:instance) { KoronaCloudClient::BadRequestErrorModel.new }

  describe 'test an instance of BadRequestErrorModel' do
    it 'should create an instance of BadRequestErrorModel' do
      expect(instance).to be_instance_of(KoronaCloudClient::BadRequestErrorModel)
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
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["BATCH_SIZE_OUT_OF_RANGE", "DATE_NOT_EXISTS", "INVALID_MODEL_PROPERTY", "INVALID_QUERY_PARAMETER", "MALFORMED_MODEL_ID_OR_DATE", "MALFORMED_MODEL_ID_OR_NUMBER", "MISSING_MODEL", "MISSING_QUERY_PARAMETER", "NUMBER_ALREADY_IN_USE", "NUMBER_NOT_EXISTS", "SUBMITTED_DATA_NOT_WELLFORMED", "UNRESOLVED_RELATION"])
      # validator.allowable_values.each do |value|
      #   expect { instance.code = value }.not_to raise_error
      # end
    end
  end

end