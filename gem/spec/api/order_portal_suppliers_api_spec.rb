=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 3.2-SNAPSHOT
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KoronaCloudClient::OrderPortalSuppliersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrderPortalSuppliersApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::OrderPortalSuppliersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderPortalSuppliersApi' do
    it 'should create an instance of OrderPortalSuppliersApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::OrderPortalSuppliersApi)
    end
  end

  # unit tests for add_order_portal_suppliers
  # adds a batch of new order_portal_suppliers
  # @param korona_account_id account id of the KORONA.cloud account
  # @param order_portal_supplier array of new order portal suppliers
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  # @option opts [String] :write_mode DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields
  # @return [Array<AddOrUpdateResult>]
  describe 'add_order_portal_suppliers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_order_portal_supplier
  # deletes the single order portal supplier
  # @param korona_account_id account id of the KORONA.cloud account
  # @param order_portal_supplier_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_order_portal_supplier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_order_portal_suppliers
  # deletes a batch of order portal suppliers
  # @param korona_account_id account id of the KORONA.cloud account
  # @param order_portal_supplier array of existing order portal suppliers (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_order_portal_suppliers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_order_portal_supplier
  # returns the single order portal supplier
  # @param korona_account_id account id of the KORONA.cloud account
  # @param order_portal_supplier_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [OrderPortalSupplier]
  describe 'get_order_portal_supplier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_order_portal_suppliers
  # lists all order portal suppliers
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListOrderPortalSupplier]
  describe 'get_order_portal_suppliers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_order_portal_supplier
  # updates the single order portal supplier; if [number] is set, the number of the object will change and the resource location as well
  # @param korona_account_id account id of the KORONA.cloud account
  # @param order_portal_supplier_id id of the related object (important: id should match the uuid-format)
  # @param order_portal_supplier the properties to update of the order portal supplier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_order_portal_supplier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_order_portal_suppliers
  # updates a batch of order portal suppliers; [number] must be set in the objects, otherwise the object cannot be updated
  # @param korona_account_id account id of the KORONA.cloud account
  # @param order_portal_supplier an array of existing order portal suppliers
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_order_portal_suppliers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end