=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.13.40
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaCloudClient::CompanyIdentification
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CompanyIdentification' do
  before do
    # run before each test
    @instance = KoronaCloudClient::CompanyIdentification.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CompanyIdentification' do
    it 'should create an instance of CompanyIdentification' do
      expect(@instance).to be_instance_of(KoronaCloudClient::CompanyIdentification)
    end
  end
  describe 'test attribute "gln"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tax_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end