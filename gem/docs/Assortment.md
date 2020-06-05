# KoronaCloudClient::Assortment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**cost_center** | [**ModelReference**](ModelReference.md) |  | [optional] 
**description** | **String** |  | [optional] 
**last_clean_up** | **DateTime** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Assortment.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 cost_center: null,
                                 description: null,
                                 last_clean_up: null,
                                 name: null)
```


