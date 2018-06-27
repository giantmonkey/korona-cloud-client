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

# Unit tests for KoronaClient::PriceGroupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PriceGroupsApi' do
  before do
    # run before each test
    @instance = KoronaClient::PriceGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PriceGroupsApi' do
    it 'should create an instance of PriceGroupsApi' do
      expect(@instance).to be_instance_of(KoronaClient::PriceGroupsApi)
    end
  end

  # unit tests for get_price_group
  # lists the price group
  # 
  # @param korona_account_id the account id
  # @param price_group_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
  # @param [Hash] opts the optional parameters
  # @return [PriceGroup]
  describe 'get_price_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_price_groups
  # lists all price groups
  # 
  # @param korona_account_id the account id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [BOOLEAN] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @return [ResultListPriceGroup]
  describe 'get_price_groups test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end