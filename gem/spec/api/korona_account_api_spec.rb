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

# Unit tests for KoronaCloudClient::KoronaAccountApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'KoronaAccountApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::KoronaAccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KoronaAccountApi' do
    it 'should create an instance of KoronaAccountApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::KoronaAccountApi)
    end
  end

  # unit tests for get_korona_account
  # returns the single korona account
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @return [KoronaAccount]
  describe 'get_korona_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end