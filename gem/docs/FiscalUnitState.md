# KoronaCloudClient::FiscalUnitState

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_information** | **Hash&lt;String, String&gt;** |  | [optional] 
**error_description** | **String** |  | [optional] 
**setup_failed** | **Boolean** |  | [optional] 
**usage_level** | [**FiscalUnitStateUsageLevel**](FiscalUnitStateUsageLevel.md) |  | [optional] 
**versions** | [**FiscalUnitStateVersionInfo**](FiscalUnitStateVersionInfo.md) |  | [optional] 
**working_state** | **String** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::FiscalUnitState.new(additional_information: null,
                                 error_description: null,
                                 setup_failed: null,
                                 usage_level: null,
                                 versions: null,
                                 working_state: null)
```


