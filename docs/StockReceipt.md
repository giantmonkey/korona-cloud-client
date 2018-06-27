# KoronaClient::StockReceipt

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**arrival_date** | **DateTime** |  | [optional] 
**booking_time** | **DateTime** |  | [optional] 
**booking_user** | [**ModelReference**](ModelReference.md) |  | [optional] 
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**create_time** | **DateTime** |  | [optional] 
**create_user** | [**ModelReference**](ModelReference.md) |  | [optional] 
**customer** | [**ModelReference**](ModelReference.md) |  | [optional] 
**description** | **String** |  | [optional] 
**dispatch_notification** | [**ModelReference**](ModelReference.md) |  | [optional] 
**items_count** | **Integer** |  | [optional] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**party_information** | [**ProductTransferInvolvedPartyInformation**](ProductTransferInvolvedPartyInformation.md) |  | [optional] 
**point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] 
**product_stock_order** | [**ModelReference**](ModelReference.md) |  | [optional] 
**source_organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**supplier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**status** | **String** |  | [optional] 


