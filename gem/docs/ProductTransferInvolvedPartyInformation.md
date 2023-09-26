# KoronaCloudClient::ProductTransferInvolvedPartyInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buyer** | [**Data**](Data.md) |  | [optional] |
| **delivery_address** | [**Data**](Data.md) |  | [optional] |
| **final_recipient** | [**Data**](Data.md) |  | [optional] |
| **invoice_recipient** | [**Data**](Data.md) |  | [optional] |
| **supplier** | [**Data**](Data.md) |  | [optional] |
| **transport_service_provider** | [**Data**](Data.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ProductTransferInvolvedPartyInformation.new(
  buyer: null,
  delivery_address: null,
  final_recipient: null,
  invoice_recipient: null,
  supplier: null,
  transport_service_provider: null
)
```

