# KoronaCloudClient::Deposit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | [**ModelReference**](ModelReference.md) |  | [optional] 
**amount** | **Float** |  | [optional] 
**receipt_number** | **String** |  | [optional] 
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**create_time** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Deposit.new(account: null,
                                 amount: null,
                                 receipt_number: null,
                                 cashier: null,
                                 create_time: null)
```


