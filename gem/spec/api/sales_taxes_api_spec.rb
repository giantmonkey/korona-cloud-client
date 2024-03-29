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

# Unit tests for KoronaCloudClient::SalesTaxesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SalesTaxesApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::SalesTaxesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SalesTaxesApi' do
    it 'should create an instance of SalesTaxesApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::SalesTaxesApi)
    end
  end

  # unit tests for add_sales_taxes
  # adds a batch of new sales taxes
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new sectors
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_sales_taxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_sales_taxes
  # deletes a batch of sales taxes
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing sales taxes (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_sales_taxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sales_tax
  # returns the single sales tax
  # @param korona_account_id account id of the KORONA.cloud account
  # @param sales_tax_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [SalesTax]
  describe 'get_sales_tax test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sales_taxes
  # lists all sales taxes
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListSalesTax]
  describe 'get_sales_taxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_sales_taxes
  # updates a batch of sales taxes
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing sales taxes (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_sales_taxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
