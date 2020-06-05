# KoronaCloudClient::AccountTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | [**ModelReference**](ModelReference.md) |  | [optional] 
**amount** | **Float** |  | [optional] 
**booking_time** | **DateTime** |  | [optional] 
**description** | **String** |  | [optional] 
**info_texts** | **Array&lt;String&gt;** |  | [optional] 
**serial_numbers** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::AccountTransaction.new(account: null,
                                 amount: null,
                                 booking_time: null,
                                 description: null,
                                 info_texts: null,
                                 serial_numbers: null)
```


