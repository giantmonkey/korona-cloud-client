# KoronaCloudClient::ProductTransferInvolvedPartyInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buyer** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] |
| **delivery_address** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] |
| **final_recipient** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] |
| **invoice_recipient** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] |
| **supplier** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] |
| **transport_service_provider** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] |

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

