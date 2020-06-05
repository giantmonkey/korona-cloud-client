# KoronaCloudClient::Statistic

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**current_period** | [**PeriodObject**](PeriodObject.md) |  | [optional] 
**previous_period** | [**PeriodObject**](PeriodObject.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Statistic.new(organizational_unit: null,
                                 current_period: null,
                                 previous_period: null)
```


