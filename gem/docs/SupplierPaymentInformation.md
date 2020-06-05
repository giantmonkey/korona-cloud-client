# KoronaCloudClient::SupplierPaymentInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** |  | [optional] 
**bank** | **String** |  | [optional] 
**bank_number** | **String** |  | [optional] 
**bic** | **String** |  | [optional] 
**creditor_identifier** | **String** |  | [optional] 
**currency** | [**ModelReference**](ModelReference.md) |  | [optional] 
**iban** | **String** |  | [optional] 
**payment_method** | **String** |  | [optional] 
**minimum_order_value** | **Float** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::SupplierPaymentInformation.new(account_number: null,
                                 bank: null,
                                 bank_number: null,
                                 bic: null,
                                 creditor_identifier: null,
                                 currency: null,
                                 iban: null,
                                 payment_method: null,
                                 minimum_order_value: null)
```


