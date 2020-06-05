# KoronaCloudClient::DayRating

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**comment** | **String** |  | [optional] 
**date** | **DateTime** |  | [optional] 
**id** | **String** |  | [optional] [readonly] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**rating** | [**Rating**](Rating.md) |  | [optional] 
**receipts** | **Integer** |  | [optional] 
**revenue** | **Float** |  | [optional] 
**visitors** | **Integer** |  | [optional] 
**weather** | [**Weather**](Weather.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::DayRating.new(cashier: null,
                                 comment: null,
                                 date: null,
                                 id: null,
                                 organizational_unit: null,
                                 rating: null,
                                 receipts: null,
                                 revenue: null,
                                 visitors: null,
                                 weather: null)
```


