# KoronaCloudClient::StockReceiptItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | [**StockReceiptItemAmount**](StockReceiptItemAmount.md) |  | [optional] 
**identification** | [**StockReceiptItemIdentification**](StockReceiptItemIdentification.md) |  | [optional] 
**index** | **Integer** |  | [optional] [readonly] 
**product** | [**ModelReference**](ModelReference.md) |  | [optional] 
**purchase_price** | [**StockReceiptItemPurchasePrice**](StockReceiptItemPurchasePrice.md) |  | [optional] 
**revision** | **Integer** |  | [optional] [readonly] 
**shelf_life** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::StockReceiptItem.new(amount: null,
                                 identification: null,
                                 index: null,
                                 product: null,
                                 purchase_price: null,
                                 revision: null,
                                 shelf_life: null)
```


