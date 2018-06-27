# KoronaClient::EndOfDayStatement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**finish_time** | **DateTime** |  | [optional] 
**receipt_count** | **Integer** |  | [optional] 
**successfully_checked** | **BOOLEAN** |  | [optional] 
**summaries** | [**EndOfDayStatementSummary**](EndOfDayStatementSummary.md) |  | [optional] 
**getz_count** | **Integer** |  | [optional] 


