=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::PromotionBenefitCommonDiscount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::PromotionBenefitCommonDiscount do
  let(:instance) { KoronaCloudClient::PromotionBenefitCommonDiscount.new }

  describe 'test an instance of PromotionBenefitCommonDiscount' do
    it 'should create an instance of PromotionBenefitCommonDiscount' do
      expect(instance).to be_instance_of(KoronaCloudClient::PromotionBenefitCommonDiscount)
    end
  end
  describe 'test attribute "appliance_target"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PRODUCT", "PRODUCTS_OF_COMMODITY_GROUP", "PRODUCTS_WITH_TAG"])
      # validator.allowable_values.each do |value|
      #   expect { instance.appliance_target = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "appliance_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CHEAPEST_TARGET", "EACH_TARGET", "EQUAL_ON_EACH_TARGET", "MOST_EXPENSIVE_TARGET", "RECEIPT"])
      # validator.allowable_values.each do |value|
      #   expect { instance.appliance_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "target_commodity_group"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "target_product"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "target_tag"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DISCOUNT", "FIXED_PRICE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "unit_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FIXED", "PERCENTAGE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.unit_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end