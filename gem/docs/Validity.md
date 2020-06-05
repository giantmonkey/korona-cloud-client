# KoronaCloudClient::Validity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daily** | [**DayTimePeriod**](DayTimePeriod.md) |  | [optional] 
**days_of_month** | **Array&lt;Integer&gt;** |  | [optional] 
**days_of_week** | **Array&lt;String&gt;** |  | [optional] 
**total** | [**TotalPeriod**](TotalPeriod.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Validity.new(daily: null,
                                 days_of_month: null,
                                 days_of_week: null,
                                 total: null)
```


