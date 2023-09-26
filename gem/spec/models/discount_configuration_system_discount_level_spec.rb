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

# Unit tests for KoronaCloudClient::DiscountConfigurationSystemDiscountLevel
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::DiscountConfigurationSystemDiscountLevel do
  let(:instance) { KoronaCloudClient::DiscountConfigurationSystemDiscountLevel.new }

  describe 'test an instance of DiscountConfigurationSystemDiscountLevel' do
    it 'should create an instance of DiscountConfigurationSystemDiscountLevel' do
      expect(instance).to be_instance_of(KoronaCloudClient::DiscountConfigurationSystemDiscountLevel)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SALE", "SPECIAL_OFFER_SCRIPT", "RECEIPT"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "level"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
