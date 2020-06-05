# KoronaCloudClient::EndOfDayStatement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**finish_time** | **DateTime** |  | [optional] 
**receipt_count** | **Integer** |  | [optional] 
**successfully_checked** | **Boolean** |  | [optional] 
**summaries** | [**EndOfDayStatementSummary**](EndOfDayStatementSummary.md) |  | [optional] 
**z_count** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::EndOfDayStatement.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 finish_time: null,
                                 receipt_count: null,
                                 successfully_checked: null,
                                 summaries: null,
                                 z_count: null)
```


