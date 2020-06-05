# KoronaCloudClient::Attendance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**category_name** | **String** |  | [optional] 
**category_id** | **String** |  | [optional] 
**creation_time** | **DateTime** |  | [optional] 
**event** | [**ModelReference**](ModelReference.md) |  | [optional] 
**expiration_time** | **DateTime** |  | [optional] 
**seats** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Attendance.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 category_name: null,
                                 category_id: null,
                                 creation_time: null,
                                 event: null,
                                 expiration_time: null,
                                 seats: null)
```


