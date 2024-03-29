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

# Unit tests for KoronaCloudClient::SectorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SectorsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::SectorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SectorsApi' do
    it 'should create an instance of SectorsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::SectorsApi)
    end
  end

  # unit tests for add_sectors
  # adds a batch of new sectors
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new sectors
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_sectors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_sectors
  # deletes a batch of sectors
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing sectors (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_sectors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sector
  # returns the single sector
  # @param korona_account_id account id of the KORONA.cloud account
  # @param sector_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [Sector]
  describe 'get_sector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sectors
  # lists all sectors
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListSector]
  describe 'get_sectors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_sectors
  # updates a batch of sectors
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing sectors (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_sectors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
