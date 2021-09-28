=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KoronaCloudClient::UserRolesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserRolesApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::UserRolesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserRolesApi' do
    it 'should create an instance of UserRolesApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::UserRolesApi)
    end
  end

  # unit tests for add_user_roles
  # adds a batch of new user roles
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body an array of new user roles
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_user_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_role
  # deletes the single user role
  # @param korona_account_id account id of the KORONA.cloud account
  # @param user_role_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_user_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_roles
  # deletes a batch of user roles
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing user roles
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_user_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_role
  # returns the single user role
  # @param korona_account_id account id of the KORONA.cloud account
  # @param user_role_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [UserRole]
  describe 'get_user_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_roles
  # lists all user roles
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [String] :number number of the related object
  # @return [ResultListUserRole]
  describe 'get_user_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_role
  # updates the single user role
  # @param korona_account_id account id of the KORONA.cloud account
  # @param user_role_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the user role
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_user_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_roles
  # updates a batch of user roles
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing user roles
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_user_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end