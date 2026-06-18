# KoronaCloudClient::FinancialAccountingData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day** | **String** |  | [optional] |
| **cost_center** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **revenue_account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **type_description** | **String** |  | [optional] |
| **tax_id** | **String** |  | [optional] |
| **value** | **Float** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::FinancialAccountingData.new(
  day: null,
  cost_center: null,
  revenue_account: null,
  type: null,
  type_description: null,
  tax_id: null,
  value: null
)
```

