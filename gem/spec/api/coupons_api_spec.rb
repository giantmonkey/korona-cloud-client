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

# Unit tests for KoronaCloudClient::CouponsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CouponsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::CouponsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CouponsApi' do
    it 'should create an instance of CouponsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::CouponsApi)
    end
  end

  # unit tests for get_coupon
  # returns the single coupon
  # @param korona_account_id account id of the KORONA.cloud account
  # @param coupon_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [Coupon]
  describe 'get_coupon test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupons
  # lists all coupons
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [String] :number number of the related object
  # @return [ResultListCoupon]
  describe 'get_coupons test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
