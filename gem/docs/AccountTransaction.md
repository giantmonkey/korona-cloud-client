# KoronaCloudClient::AccountTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **booking_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **description** | **String** |  | [optional] |
| **info_texts** | **Array&lt;String&gt;** |  | [optional] |
| **serial_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **external_references** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::AccountTransaction.new(
  account: null,
  amount: null,
  booking_time: 2018-11-22T09:40:21+01:00,
  description: null,
  info_texts: null,
  serial_numbers: null,
  external_references: null
)
```

