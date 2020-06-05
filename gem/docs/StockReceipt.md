# KoronaCloudClient::StockReceipt

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
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
**comment** | **String** |  | [optional] 
**status** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::StockReceipt.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 arrival_date: null,
                                 booking_time: null,
                                 booking_user: null,
                                 cashier: null,
                                 create_time: null,
                                 create_user: null,
                                 customer: null,
                                 description: null,
                                 dispatch_notification: null,
                                 items_count: null,
                                 organizational_unit: null,
                                 party_information: null,
                                 point_of_sale: null,
                                 product_stock_order: null,
                                 source_organizational_unit: null,
                                 supplier: null,
                                 comment: null,
                                 status: null)
```


