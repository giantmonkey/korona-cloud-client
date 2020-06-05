# KoronaCloudClient::Payment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** |  | [optional] 
**currency** | [**ModelReference**](ModelReference.md) |  | [optional] 
**payment_method** | [**ModelReference**](ModelReference.md) |  | [optional] 
**transaction_time** | **DateTime** |  | [optional] 
**transaction_token** | **String** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Payment.new(amount: null,
                                 currency: null,
                                 payment_method: null,
                                 transaction_time: null,
                                 transaction_token: null)
```


