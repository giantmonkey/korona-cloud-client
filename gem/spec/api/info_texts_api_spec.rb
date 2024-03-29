=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.19.20
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for KoronaCloudClient::InfoTextsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InfoTextsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::InfoTextsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InfoTextsApi' do
    it 'should create an instance of InfoTextsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::InfoTextsApi)
    end
  end

  # unit tests for add_info_texts
  # adds a batch of new info texts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new info texts
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_info_texts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_info_texts
  # deletes a batch of info texts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing info texts (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_info_texts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_info_text
  # returns the single info text
  # @param korona_account_id account id of the KORONA.cloud account
  # @param info_text_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [InfoText]
  describe 'get_info_text test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_info_texts
  # lists all info texts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListInfoText]
  describe 'get_info_texts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_info_texts
  # updates a batch of info texts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing info texts (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_info_texts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
