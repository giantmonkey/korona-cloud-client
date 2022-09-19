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

# Unit tests for KoronaCloudClient::ContraAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContraAccountsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::ContraAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContraAccountsApi' do
    it 'should create an instance of ContraAccountsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::ContraAccountsApi)
    end
  end

  # unit tests for add_contra_accounts
  # adds a batch of new contra accounts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new contra accounts
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_contra_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_contra_account
  # deletes the single contra account
  # @param korona_account_id account id of the KORONA.cloud account
  # @param contra_account_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_contra_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_contra_accounts
  # deletes a batch of contra accounts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing contra accounts (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_contra_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contra_account
  # returns a single contra account
  # @param korona_account_id account id of the KORONA.cloud account
  # @param contra_account_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [ContraAccount]
  describe 'get_contra_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contra_accounts
  # lists all contra accounts
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListContraAccount]
  describe 'get_contra_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_contra_account
  # updates the single contra account
  # if [number] is set, the number of the object will change and the resource location as well
  # @param korona_account_id account id of the KORONA.cloud account
  # @param contra_account_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the contra account
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_contra_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_contra_accounts
  # updates a batch of contra accounts
  # [number] must be set in the objects, otherwise the object cannot be updated
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of existing contra accounts
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_contra_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end