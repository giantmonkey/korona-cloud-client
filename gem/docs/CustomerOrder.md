# KoronaCloudClient::CustomerOrder

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
**create_time** | **DateTime** |  | [optional] 
**customer** | [**ModelReference**](ModelReference.md) |  | [optional] 
**customer_data** | [**CustomerData**](CustomerData.md) |  | [optional] 
**deposits** | [**Array&lt;Deposit&gt;**](Deposit.md) |  | [optional] 
**finish_time** | **DateTime** |  | [optional] 
**info_texts** | **Array&lt;String&gt;** |  | [optional] 
**items** | [**Array&lt;ReceiptItem&gt;**](ReceiptItem.md) |  | [optional] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**pick_up_time** | **DateTime** |  | [optional] 
**point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] 
**ready_for_pick_up** | **Boolean** |  | [optional] 
**warehouse** | [**ModelReference**](ModelReference.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::CustomerOrder.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 booking_time: null,
                                 cashier: null,
                                 comment: null,
                                 create_time: null,
                                 customer: null,
                                 customer_data: null,
                                 deposits: null,
                                 finish_time: null,
                                 info_texts: null,
                                 items: null,
                                 organizational_unit: null,
                                 pick_up_time: null,
                                 point_of_sale: null,
                                 ready_for_pick_up: null,
                                 warehouse: null)
```


