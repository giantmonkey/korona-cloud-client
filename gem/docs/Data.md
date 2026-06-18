# KoronaCloudClient::Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**AddressInformation**](AddressInformation.md) |  | [optional] |
| **identification** | [**CompanyIdentification**](CompanyIdentification.md) |  | [optional] |
| **bank_information** | [**BankInformation**](BankInformation.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Data.new(
  address: null,
  identification: null,
  bank_information: null
)
```

