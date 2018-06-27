# KoronaClient::Receipt

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**account_transactions** | [**Array&lt;AccountTransaction&gt;**](AccountTransaction.md) |  | [optional] 
**booking_time** | **DateTime** |  | [optional] 
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**creation_time** | **DateTime** |  | [optional] 
**currency** | [**ModelReference**](ModelReference.md) |  | [optional] 
**customer** | [**ModelReference**](ModelReference.md) |  | [optional] 
**customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**customer_order** | [**ModelReference**](ModelReference.md) |  | [optional] 
**deposit_amount** | **Float** |  | [optional] 
**geo_location** | [**GeoLocation**](GeoLocation.md) |  | [optional] 
**items** | [**Array&lt;ReceiptItem&gt;**](ReceiptItem.md) |  | [optional] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**payments** | [**Array&lt;Payment&gt;**](Payment.md) |  | [optional] 
**point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] 
**price_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**voided** | **BOOLEAN** |  | [optional] 
**zcounter** | **Integer** |  | [optional] 


