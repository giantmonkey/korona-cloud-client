# KoronaCloudClient::ProductPrice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **Float** |  | [optional] 
**valid_from** | **DateTime** |  | [optional] 
**product_code** | **String** |  | [optional] 
**price_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::ProductPrice.new(value: null,
                                 valid_from: null,
                                 product_code: null,
                                 price_group: null,
                                 organizational_unit: null)
```


