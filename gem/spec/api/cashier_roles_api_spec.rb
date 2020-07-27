=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.14.7
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for KoronaCloudClient::CashierRolesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CashierRolesApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::CashierRolesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CashierRolesApi' do
    it 'should create an instance of CashierRolesApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::CashierRolesApi)
    end
  end

  # unit tests for add_cashier_roles
  # adds a batch of new cashier roles
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of new cashier roles
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_cashier_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_cashier_role
  # deletes the single cashier role
  # @param korona_account_id account id of the KORONA.cloud account
  # @param cashier_role_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_cashier_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_cashier_roles
  # deletes a batch of cashier roles
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing cashier roles (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_cashier_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cashier_role
  # returns the single cashier role
  # @param korona_account_id account id of the KORONA.cloud account
  # @param cashier_role_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [CashierRole]
  describe 'get_cashier_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cashier_roles
  # lists all cashier roles
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListCashierRole]
  describe 'get_cashier_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_cashier_role
  # updates the single cashier role
  # @param korona_account_id account id of the KORONA.cloud account
  # @param cashier_role_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the cashier role
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_cashier_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_cashier_roles
  # updates a batch of cashier roles
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing cashier roles (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_cashier_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
