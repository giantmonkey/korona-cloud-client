# KoronaCloudClient::AccountTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **booking_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **description** | **String** |  | [optional] |
| **info_texts** | **Array&lt;Object&gt;** |  | [optional] |
| **serial_numbers** | **Array&lt;Object&gt;** |  | [optional] |
| **external_references** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::AccountTransaction.new(
  account: null,
  amount: null,
  booking_time: 2018-11-22T08:40:21Z,
  description: null,
  info_texts: null,
  serial_numbers: null,
  external_references: null
)
```

