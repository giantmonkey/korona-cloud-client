# KoronaCloudClient::DeliveryNote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**booking_time** | **DateTime** |  | [optional] 
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**comment** | **String** |  | [optional] 
**customer** | [**ModelReference**](ModelReference.md) |  | [optional] 
**delivery_time** | **DateTime** |  | [optional] 
**finalized** | **Boolean** |  | [optional] [readonly] 
**items** | [**Array&lt;DeliveryNoteItem&gt;**](DeliveryNoteItem.md) |  | [optional] 
**order_number** | **String** |  | [optional] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] 
**signature** | [**Signature**](Signature.md) |  | [optional] 
**total** | [**TotalPrice**](TotalPrice.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::DeliveryNote.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 booking_time: null,
                                 cashier: null,
                                 comment: null,
                                 customer: null,
                                 delivery_time: null,
                                 finalized: null,
                                 items: null,
                                 order_number: null,
                                 organizational_unit: null,
                                 point_of_sale: null,
                                 signature: null,
                                 total: null)
```


