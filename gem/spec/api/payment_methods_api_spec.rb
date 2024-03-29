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

# Unit tests for KoronaCloudClient::PaymentMethodsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentMethodsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::PaymentMethodsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentMethodsApi' do
    it 'should create an instance of PaymentMethodsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::PaymentMethodsApi)
    end
  end

  # unit tests for add_payment_methods
  # adds a batch of new payment methods
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new payment methods
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_payment_methods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_payment_method
  # deletes the single payment method
  # @param korona_account_id account id of the KORONA.cloud account
  # @param payment_method_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payment_method test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_payment_methods
  # deletes a batch of payment methods
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing payment methods (id or number required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_payment_methods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_method
  # returns the single payment method
  # @param korona_account_id account id of the KORONA.cloud account
  # @param payment_method_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethod]
  describe 'get_payment_method test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_methods
  # lists all payment methods
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListPaymentMethod]
  describe 'get_payment_methods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_payment_method
  # updates the single payment method
  # if [number] is set, the number of the object will change and the resource location as well
  # @param korona_account_id account id of the KORONA.cloud account
  # @param payment_method_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the payment method
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_payment_method test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_payment_methods
  # updates a batch of payment methods
  # [number] must be set in the objects, otherwise the object cannot be updated
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of existing payment methods
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_payment_methods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
