# KoronaCloudClient::Receipt

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**account_transactions** | [**Array&lt;AccountTransaction&gt;**](AccountTransaction.md) |  | [optional] 
**additional_info** | [**Array&lt;AdditionalInfo&gt;**](AdditionalInfo.md) |  | [optional] 
**booking_time** | **DateTime** |  | [optional] 
**cancelled** | **Boolean** |  | [optional] 
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**creation_time** | **DateTime** |  | [optional] 
**currency** | [**ModelReference**](ModelReference.md) |  | [optional] 
**customer** | [**ModelReference**](ModelReference.md) |  | [optional] 
**customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**deposit_amount** | **Float** |  | [optional] 
**fiscal_transactions** | [**Array&lt;FiscalTransaction&gt;**](FiscalTransaction.md) |  | [optional] 
**geo_location** | [**GeoLocation**](GeoLocation.md) |  | [optional] 
**info_texts** | **Array&lt;String&gt;** |  | [optional] 
**items** | [**Array&lt;ReceiptItem&gt;**](ReceiptItem.md) |  | [optional] 
**max_revisions** | [**ReceiptMaxRevisions**](ReceiptMaxRevisions.md) |  | [optional] 
**order_number** | **String** |  | [optional] 
**organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**payments** | [**Array&lt;Payment&gt;**](Payment.md) |  | [optional] 
**point_of_sale** | [**ModelReference**](ModelReference.md) |  | [optional] 
**price_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**signature** | [**Signature**](Signature.md) |  | [optional] 
**voided** | **Boolean** |  | [optional] 
**voided_items** | [**Array&lt;VoidedReceiptItem&gt;**](VoidedReceiptItem.md) |  | [optional] [readonly] 
**void_fiscal_transactions** | [**Array&lt;FiscalTransaction&gt;**](FiscalTransaction.md) |  | [optional] 
**warehouse** | [**ModelReference**](ModelReference.md) |  | [optional] 
**zcounter** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::Receipt.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 account_transactions: null,
                                 additional_info: null,
                                 booking_time: null,
                                 cancelled: null,
                                 cashier: null,
                                 creation_time: null,
                                 currency: null,
                                 customer: null,
                                 customer_group: null,
                                 deposit_amount: null,
                                 fiscal_transactions: null,
                                 geo_location: null,
                                 info_texts: null,
                                 items: null,
                                 max_revisions: null,
                                 order_number: null,
                                 organizational_unit: null,
                                 payments: null,
                                 point_of_sale: null,
                                 price_group: null,
                                 signature: null,
                                 voided: null,
                                 voided_items: null,
                                 void_fiscal_transactions: null,
                                 warehouse: null,
                                 zcounter: null)
```


