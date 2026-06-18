# KoronaCloudClient::BankInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** |  | [optional] |
| **bank** | **String** |  | [optional] |
| **bank_number** | **String** |  | [optional] |
| **bic** | **String** |  | [optional] |
| **iban** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::BankInformation.new(
  account_number: null,
  bank: null,
  bank_number: null,
  bic: null,
  iban: null
)
```

