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
require 'date'

# Unit tests for KoronaCloudClient::Account
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::Account do
  let(:instance) { KoronaCloudClient::Account.new }

  describe 'test an instance of Account' do
    it 'should create an instance of Account' do
      expect(instance).to be_instance_of(KoronaCloudClient::Account)
    end
  end
  describe 'test attribute "active"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "revision"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "cash_journal_relevant"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "denomination_input"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "exclusive"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "producer"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "requires_serial_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "revenue_account"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DEPOSIT", "WITHDRAWAL"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "show_transaction_on_customer_display"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "invert_in_cash_journal"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "fiscal_export_business_case"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["OPENING_BALANCE", "ADVANCE_PAYMENT_LIQUIDATION", "ADVANCE_PAYMENT_CESSATION", "SURCHARGE", "DISBURSEMENT", "DIFFERENCE_TARGET_ACTUAL", "PAYMENT", "SINGLE_USE_VOUCHER_PAYMENT", "SINGLE_USE_VOUCHER_PURCHASE", "CLAIM_REDEMPTION", "CLAIM_ORIGINATION", "MONEY_TRANSIT", "WAGE_PAYMENT", "VALUE_VOUCHER_PAYMENT", "VALUE_VOUCHER_PURCHASE", "DEPOSIT", "DEPOSIT_REFUND", "PRIVATE_INSERT", "PRIVATE_WITHDRAWEL", "DISCOUNT", "TIP_EMPLOYER", "TIP_EMPLOYEE", "REVENUE", "GRANT_REAL", "GRANT_UNREAL"])
      # validator.allowable_values.each do |value|
      #   expect { instance.fiscal_export_business_case = value }.not_to raise_error
      # end
    end
  end

end
