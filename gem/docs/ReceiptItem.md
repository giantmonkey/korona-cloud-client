# KoronaCloudClient::ReceiptItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**booking_time** | **DateTime** |  | [optional] 
**commodity_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**indent** | **Integer** |  | [optional] 
**info_texts** | **Array&lt;String&gt;** |  | [optional] 
**discounts** | [**Array&lt;Discount&gt;**](Discount.md) |  | [optional] 
**manual_price** | **Boolean** |  | [optional] 
**product** | [**ModelReference**](ModelReference.md) |  | [optional] 
**quantity** | **Float** |  | [optional] 
**recognition_number** | **String** |  | [optional] 
**sector** | [**ModelReference**](ModelReference.md) |  | [optional] 
**serial_numbers** | **Array&lt;String&gt;** |  | [optional] 
**total** | [**TotalPrice**](TotalPrice.md) |  | [optional] 
**delivery_date** | **DateTime** |  | [optional] 
**attendance** | [**ModelReference**](ModelReference.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::ReceiptItem.new(booking_time: null,
                                 commodity_group: null,
                                 indent: null,
                                 info_texts: null,
                                 discounts: null,
                                 manual_price: null,
                                 product: null,
                                 quantity: null,
                                 recognition_number: null,
                                 sector: null,
                                 serial_numbers: null,
                                 total: null,
                                 delivery_date: null,
                                 attendance: null)
```


