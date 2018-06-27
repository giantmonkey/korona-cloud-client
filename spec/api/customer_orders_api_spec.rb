=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

OpenAPI spec version: 3
Contact: support@combase.net
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KoronaClient::CustomerOrdersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomerOrdersApi' do
  before do
    # run before each test
    @instance = KoronaClient::CustomerOrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerOrdersApi' do
    it 'should create an instance of CustomerOrdersApi' do
      expect(@instance).to be_instance_of(KoronaClient::CustomerOrdersApi)
    end
  end

  # unit tests for add_customer_orders
  # adds a batch of new customer orders
  # 
  # @param korona_account_id the account id
  # @param body a array of new customer orders
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'add_customer_orders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_customer_order
  # deletes the customer order
  # 
  # @param korona_account_id the account id
  # @param customer_order_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_customer_order test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer_order
  # lists the customer order
  # 
  # @param korona_account_id the account id
  # @param customer_order_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
  # @param [Hash] opts the optional parameters
  # @return [CustomerOrder]
  describe 'get_customer_order test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer_orders
  # lists all customer orders
  # 
  # @param korona_account_id the account id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [BOOLEAN] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [DateTime] :min_create_time min (inclusive) create time of the receipt (ISO 8601; date, time and timezone)
  # @option opts [DateTime] :max_create_time max (inclusive) create time of the receipt (ISO 8601; date, time and timezone)
  # @option opts [DateTime] :min_pick_up_time min (inclusive) pick up time of the receipt (ISO 8601; date, time and timezone)
  # @option opts [DateTime] :max_pick_up_time max (inclusive) pick up time of the receipt (ISO 8601; date, time and timezone)
  # @return [ResultListCustomerOrder]
  describe 'get_customer_orders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_customer_order
  # changes the customer order
  # if [number] is set, the number of the object will change and the resource location as well
  # @param korona_account_id the account id
  # @param customer_order_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
  # @param body the properties to update of the customer order
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_customer_order test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_customer_orders
  # changes a batch of customer orders
  # [number] must be set in the objects, otherwise the object cannot be updated
  # @param korona_account_id the account id
  # @param body a array of existing customer orders
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_customer_orders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end