# KoronaCloudClient::FiscalUnitStateUsageLevel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registered_clients** | [**FiscalUnitStateUsageLevelValue**](FiscalUnitStateUsageLevelValue.md) |  | [optional] |
| **created_signatures** | [**FiscalUnitStateUsageLevelValue**](FiscalUnitStateUsageLevelValue.md) |  | [optional] |
| **stored_bytes** | [**FiscalUnitStateUsageLevelValue**](FiscalUnitStateUsageLevelValue.md) |  | [optional] |
| **unfinished_transactions** | [**FiscalUnitStateUsageLevelValue**](FiscalUnitStateUsageLevelValue.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::FiscalUnitStateUsageLevel.new(
  registered_clients: null,
  created_signatures: null,
  stored_bytes: null,
  unfinished_transactions: null
)
```

