# KoronaCloudClient::EndOfDayStatementSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accounts** | [**Array&lt;AccountSummary&gt;**](AccountSummary.md) |  | [optional] 
**cashiers** | [**Array&lt;CashierSummary&gt;**](CashierSummary.md) |  | [optional] 
**commodity_groups** | [**Array&lt;CommodityGroupSummary&gt;**](CommodityGroupSummary.md) |  | [optional] 
**customer_groups** | [**Array&lt;CustomerGroupSummary&gt;**](CustomerGroupSummary.md) |  | [optional] 
**payments** | [**Array&lt;PaymentSummary&gt;**](PaymentSummary.md) |  | [optional] 
**taxes** | [**Array&lt;TaxSummary&gt;**](TaxSummary.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::EndOfDayStatementSummary.new(accounts: null,
                                 cashiers: null,
                                 commodity_groups: null,
                                 customer_groups: null,
                                 payments: null,
                                 taxes: null)
```


