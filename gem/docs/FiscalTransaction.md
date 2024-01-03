# KoronaCloudClient::FiscalTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_description** | **String** |  | [optional] |
| **failed** | **Boolean** |  | [optional] |
| **finish_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **first_process_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **fiscal_unit** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **number** | **Integer** |  | [optional] |
| **print_link** | **String** |  | [optional] |
| **print_qr_code** | **String** |  | [optional] |
| **print_texts** | **Array&lt;Object&gt;** |  | [optional] |
| **process_data** | **String** |  | [optional] |
| **process_type** | **String** |  | [optional] |
| **signature** | **String** |  | [optional] |
| **signature_counter** | **Integer** |  | [optional] |
| **start_time** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::FiscalTransaction.new(
  error_description: null,
  failed: null,
  finish_time: 2018-11-22T08:40:21Z,
  first_process_time: 2018-11-22T08:40:21Z,
  fiscal_unit: null,
  number: null,
  print_link: null,
  print_qr_code: null,
  print_texts: null,
  process_data: null,
  process_type: null,
  signature: null,
  signature_counter: null,
  start_time: 2018-11-22T08:40:21Z
)
```

