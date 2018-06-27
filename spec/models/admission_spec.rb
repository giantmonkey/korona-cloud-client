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
require 'date'

# Unit tests for KoronaClient::Admission
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Admission' do
  before do
    # run before each test
    @instance = KoronaClient::Admission.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Admission' do
    it 'should create an instance of Admission' do
      expect(@instance).to be_instance_of(KoronaClient::Admission)
    end
  end
  describe 'test attribute "daily"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
