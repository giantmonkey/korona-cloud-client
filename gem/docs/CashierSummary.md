# KoronaCloudClient::CashierSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cancelled_items** | [**AmountCountData**](AmountCountData.md) |  | [optional] 
**cancelled_receipts** | [**AmountCountData**](AmountCountData.md) |  | [optional] 
**cashier** | [**ModelReference**](ModelReference.md) |  | [optional] 
**receipts** | [**AmountCountData**](AmountCountData.md) |  | [optional] 
**returns** | [**AmountCountData**](AmountCountData.md) |  | [optional] 
**voided_receipts** | [**AmountCountData**](AmountCountData.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::CashierSummary.new(cancelled_items: null,
                                 cancelled_receipts: null,
                                 cashier: null,
                                 receipts: null,
                                 returns: null,
                                 voided_receipts: null)
```


