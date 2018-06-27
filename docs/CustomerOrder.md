# KoronaClient::CustomerOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**booking_time** | **DateTime** |  | [optional] 
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**comment** | **String** |  | [optional] 
**create_time** | **DateTime** |  | [optional] 
**customer** | [**ModelReference**](ModelReference.md) |  | [optional] 
**customer_data** | [**CustomerData**](CustomerData.md) |  | [optional] 
**deposit** | **Float** |  | [optional] 
**deposit_account** | [**ModelReference**](ModelReference.md) |  | [optional] 
**finish_time** | **DateTime** |  | [optional] 
**items** | [**Array&lt;ReceiptItem&gt;**](ReceiptItem.md) |  | [optional] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**pick_up_time** | **DateTime** |  | [optional] 
**point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] 
**ready_for_pick_up** | **BOOLEAN** |  | [optional] 
**warehouse** | [**ModelReference**](ModelReference.md) |  | [optional] 


