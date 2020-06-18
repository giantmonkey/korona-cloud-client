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

# Unit tests for KoronaCloudClient::StatisticMapStringRevenueData
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StatisticMapStringRevenueData' do
  before do
    # run before each test
    @instance = KoronaCloudClient::StatisticMapStringRevenueData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatisticMapStringRevenueData' do
    it 'should create an instance of StatisticMapStringRevenueData' do
      expect(@instance).to be_instance_of(KoronaCloudClient::StatisticMapStringRevenueData)
    end
  end
  describe 'test attribute "organizational_unit"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "current_period"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "previous_period"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end