# KoronaCloudClient::InventoryList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**booking_time** | **DateTime** |  | [optional] [readonly] 
**booking_user** | [**ModelReference**](ModelReference.md) |  | [optional] 
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**create_time** | **DateTime** |  | [optional] [readonly] 
**description** | **String** |  | [optional] 
**finish_time** | **DateTime** |  | [optional] [readonly] 
**inventory** | [**ModelReference**](ModelReference.md) |  | [optional] 
**modified_time** | **DateTime** |  | [optional] [readonly] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] 
**status** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::InventoryList.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 booking_time: null,
                                 booking_user: null,
                                 cashier: null,
                                 create_time: null,
                                 description: null,
                                 finish_time: null,
                                 inventory: null,
                                 modified_time: null,
                                 organizational_unit: null,
                                 point_of_sale: null,
                                 status: null)
```


