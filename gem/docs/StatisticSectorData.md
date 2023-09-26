# KoronaCloudClient::StatisticSectorData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **net_value** | **Float** |  | [optional] |
| **gross_value** | **Float** |  | [optional] |
| **tax_value** | **Float** |  | [optional] |
| **sector** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **year** | **Integer** |  | [optional] |
| **month** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::StatisticSectorData.new(
  net_value: null,
  gross_value: null,
  tax_value: null,
  sector: null,
  organizational_unit: null,
  year: null,
  month: null
)
```

